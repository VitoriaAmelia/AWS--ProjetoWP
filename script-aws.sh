#!/bin/bash

# Configurações iniciais
MY_DB_NAME="dbprojetowp"
MY_DB_USER="admin"
MY_DB_PASS="teste_banco"
MY_EFS_ID="fs-0779fa6e745be3737"
MY_DB_ENDPOINT="dbprojetowp.cm3muik4uvpm.us-east-1.rds.amazonaws.com"
MY_DOCKER_COMPOSE_VER="v2.34.0"
MY_PROJECT_PATH="/home/ec2-user/projeto-docker"
MY_EFS_PATH="/mnt/efs"

# Atualizações básicas
yum update -y
yum install -y aws-cli

# Instalação e configuração do Docker
yum install -y docker
systemctl enable docker
systemctl start docker
usermod -a -G docker ec2-user

# Instalação do Docker Compose
curl -SL https://github.com/docker/compose/releases/download/${MY_DOCKER_COMPOSE_VER}/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Instalação do EFS utils
yum install -y amazon-efs-utils
mkdir -p ${MY_EFS_PATH}

# Retry para montar o EFS
retries=5
until mount -t efs ${MY_EFS_ID}:/ ${MY_EFS_PATH}; do
  ((retries--))
  if [ $retries -le 0 ]; then
    echo "Falha ao montar o EFS após várias tentativas" >> /var/log/user-data.log
    exit 1
  fi
  echo "Tentando montar EFS novamente em 10s..." >> /var/log/user-data.log
  sleep 10
done

# EFS montado automaticamente toda vez que a instância iniciar
echo "${MY_EFS_ID}:/ ${MY_EFS_PATH} efs defaults,_netdev 0 0" >> /etc/fstab

# Permissões
chmod -R 777 ${MY_EFS_PATH}

# Criação e acesso ao diretório do projeto
mkdir -p ${MY_PROJECT_PATH}
cd ${MY_PROJECT_PATH}

# Criação do docker-compose.yml
cat > docker-compose.yml <<EOL
version: '3.7'
services:
  wordpress:
    image: wordpress:latest
    container_name: wordpress
    environment:
      WORDPRESS_DB_HOST: ${MY_DB_ENDPOINT}
      WORDPRESS_DB_NAME: ${MY_DB_NAME}
      WORDPRESS_DB_USER: ${MY_DB_USER}
      WORDPRESS_DB_PASSWORD: ${MY_DB_PASS}
    ports:
      - 80:80
    volumes:
      - ${MY_EFS_PATH}:/var/www/html
EOL

# Só iniciar se o EFS estiver montado
if mountpoint -q ${MY_EFS_PATH}; then
  docker-compose up -d
  echo "WordPress iniciado com sucesso" >> /var/log/user-data.log
else
  echo "EFS não montado, abortando docker-compose" >> /var/log/user-data.log
  exit 1
fi
