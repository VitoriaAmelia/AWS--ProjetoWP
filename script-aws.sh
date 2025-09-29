#!/bin/bash

# Configurações iniciais
db_name=""
db_user=""
db_pass=""
efs_id=""
db_endpoint=""
docker_compose_ver="v2.34.0"
project_path="/home/ec2-user/projeto-docker"
efs_path="/mnt/efs"

# Atualizações básicas
yum update -y
yum install -y aws-cli

# Instalação e configuração do Docker
yum install -y docker
systemctl enable docker
systemctl start docker
usermod -a -G docker ec2-user

# Instalação do Docker Compose
curl -SL https://github.com/docker/compose/releases/download/${docker_compose_ver}/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Instalação do EFS utils
yum install -y amazon-efs-utils
mkdir -p ${efs_path}

# Retry para montar o EFS
retries=5
until mount -t efs ${efs_id}:/ ${efs_path}; do
  ((retries--))
  if [ $retries -le 0 ]; then
    echo "Falha ao montar o EFS após várias tentativas" >> /var/log/user-data.log
    exit 1
  fi
  echo "Tentando montar EFS novamente em 10s..." >> /var/log/user-data.log
  sleep 10
done

# EFS montado automaticamente toda vez que a instância iniciar
echo "${efs_id}:/ ${efs_path} efs defaults,_netdev 0 0" >> /etc/fstab

# Permissões
chmod -R 777 ${efs_path}

# Criação e acesso ao diretório do projeto
mkdir -p ${project_path}
cd ${project_path}

# Criação do docker-compose.yml
cat > docker-compose.yml <<EOL
version: '3.7'
services:
  wordpress:
    image: wordpress:latest
    container_name: wordpress
    environment:
      WORDPRESS_DB_HOST: ${db_endpoint}
      WORDPRESS_DB_NAME: ${db_name}
      WORDPRESS_DB_USER: ${db_user}
      WORDPRESS_DB_PASSWORD: ${db_pass}
    ports:
      - 80:80
    volumes:
      - ${efs_path}:/var/www/html
EOL

# Só iniciar se o EFS estiver montado
if mountpoint -q ${efs_path}; then
  docker-compose up -d
  echo "WordPress iniciado com sucesso" >> /var/log/user-data.log
else
  echo "EFS não montado, abortando docker-compose" >> /var/log/user-data.log
  exit 1
fi

