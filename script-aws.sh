#!/bin/bash

# Minhas variáveis
EFS_FILE_SYSTEM_ID="fs-0779fa6e745be3737"  
DB_HOST="dbprojetowp.cm3muik4uvpm.us-east-1.rds.amazonaws.com"  
DB_NAME="dbprojetowp"  
DB_USER="admin"  
DB_PASSWORD="teste_banco"  
DOCKER_COMPOSE_VERSION="v2.34.0"
PROJECT_DIR="/home/ec2-user/projeto-docker"
EFS_MOUNT_DIR="/mnt/efs"  

# Atualizações básicas
yum update -y
yum install -y aws-cli

# Instalação e configuração do Docker
yum install -y docker
systemctl enable docker
systemctl start docker
usermod -a -G docker ec2-user

# Instalação do Docker Compose
curl -SL https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Instalação do EFS utils
yum install -y amazon-efs-utils
mkdir -p ${EFS_MOUNT_DIR}

# Retry para montar o EFS
retries=5
until mount -t efs ${EFS_FILE_SYSTEM_ID}:/ ${EFS_MOUNT_DIR}; do
  ((retries--))
  if [ $retries -le 0 ]; then
    echo "Falha ao montar o EFS após várias tentativas" >> /var/log/user-data.log
    exit 1
  fi
  echo "Tentando montar EFS novamente em 10s..." >> /var/log/user-data.log
  sleep 10
done

# EFS montado automaticamente toda vez que a instância iniciar
echo "${EFS_FILE_SYSTEM_ID}:/ ${EFS_MOUNT_DIR} efs defaults,_netdev 0 0" >> /etc/fstab

# Permissões 
chmod -R 777 ${EFS_MOUNT_DIR}

# Criação e acesso ao diretório do projeto
mkdir -p ${PROJECT_DIR}
cd ${PROJECT_DIR}

# Criação do docker-compose.yml
cat > docker-compose.yml <<EOL
version: '3.7'
services:
  wordpress:
    image: wordpress:latest
    container_name: wordpress
    environment:
      WORDPRESS_DB_HOST: ${DB_HOST}
      WORDPRESS_DB_NAME: ${DB_NAME}
      WORDPRESS_DB_USER: ${DB_USER}
      WORDPRESS_DB_PASSWORD: ${DB_PASSWORD}
    ports:
      - 80:80
    volumes:
      - ${EFS_MOUNT_DIR}:/var/www/html
EOL

# Só iniciar se o EFS estiver montado
if mountpoint -q ${EFS_MOUNT_DIR}; then
  docker-compose up -d
  echo "WordPress iniciado com sucesso" >> /var/log/user-data.log
else
  echo "EFS não montado, abortando docker-compose" >> /var/log/user-data.log
  exit 1
fi

