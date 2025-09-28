# 🚀 Projeto AWS: Automação de Infraestrutura

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazon-aws) ![Docker](https://img.shields.io/badge/Docker-Container-blue?logo=docker) ![WordPress](https://img.shields.io/badge/WordPress-CMS-blue?logo=wordpress) ![Bash](https://img.shields.io/badge/Bash-Scripting-green?logo=gnu-bash)


Este projeto fornece um guia passo a passo para criar e configurar uma infraestrutura completa na **AWS**, utilizando serviços como **VPC, Security Groups, RDS, EFS, Launch Template, Load Balancer, Auto Scaling e CloudWatch**.  
É ideal para aqueles que querem implementar uma arquitetura escalável na nuvem

 <div style="text-align: center;">
  <img width="200" height="165" alt="pngwing com (6)" src="https://github.com/user-attachments/assets/e3209c76-d5e2-43a3-9570-95d0b334e667" />
</div>


## 📂 Estrutura do Projeto

  - `1.CriandoVPC.md`
  - `2.Configurando SG.md`
  - `3.Criando RDS.md`
  - `4.Criando EFS.md`
  - `5.Criando Launch Template.md`
  - `6.Criando Load Balancer.md`
  - `7.Criando Auto Scaling.md`
  - `9.Criando CloudWatch.md`


## 📝 Como Utilizar

  1. Seguir a ordem dos arquivos Markdown para criar a infraestrutura passo a passo  
  2. Configurar cada serviço conforme descrito nas etapas 


## 🛠 Tecnologias e Conceitos Utilizados

  - **Infraestrutura como Serviço (IaaS)** – EC2, RDS, EFS, VPC, Load Balancer, Auto Scaling.  
  - **Monitoramento e observabilidade** – CloudWatch.  
  - **Gerenciamento de rede e segurança** – Security Groups, Subnets, Gateways.  
  - **Automação / Templates / Containers** – Launch Templates, User Data (scripts de inicialização), Docker, Docker Compose v2.34.0.  
  - **Computação em nuvem** – uso de AWS como plataforma de cloud computing.


## 🎯 Objetivos do Projeto

  - Criar uma aplicação **WordPress** que será distribuída em múltiplas instâncias de EC2 por meio de um **Auto Scaling Group (ASG)**, com balanceamento de carga fornecido por um **Application Load Balancer (ALB)**.  
  - Garantir que o armazenamento de arquivos será centralizado e compartilhado através do **Amazon Elastic File System (EFS)**, enquanto os dados da aplicação serão armazenados em um banco relacional com o **Amazon RDS**.





