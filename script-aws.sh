#!/bin/bash

senha_db="teste_banco"
nome_db="dbprojetowp"
efs_id="fs-09bfc8d63b2902b69"
user_db="admin"
endpoint_db="dbprojetowp.cm3muik4uvpm.us-east-1.rds.amazonaws.com"

yum update -y
yum install -y aws-cli docker amazon-efs-utils

systemctl start docker
systemctl enable docker
usermod -a -G docker ec2-user

curl -SL https://github.com/docker/compose/releases/download/v2.34.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

mkdir -p /mnt/efs
mount -t efs ${efs_id}:/ /mnt/efs
echo "${efs_id}:/ /mnt/efs efs defaults,_netdev 0 0" >> /etc/fstab
chown -R 33:33 /mnt/efs
chmod -R 775 /mnt/efs

mkdir -p /home/ec2-user/projetowp
cd /home/ec2-user/projetowp

cat > docker-compose.yml <<EOF
version: '3.7'
services:
  wordpress:
    image: wordpress:latest
    container_name: wordpress
    environment:
      WORDPRESS_DB_HOST: ${endpoint_db}
      WORDPRESS_DB_NAME: ${nome_db}
      WORDPRESS_DB_USER: ${user_db}
      WORDPRESS_DB_PASSWORD: ${senha_db}
    ports:
      - 80:80
    volumes:
      - /mnt/efs:/var/www/html
EOF

docker-compose up -d
