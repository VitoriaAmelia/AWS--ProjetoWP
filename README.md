# 🚀 Projeto AWS

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazon-aws) ![Docker](https://img.shields.io/badge/Docker-Container-blue?logo=docker) ![WordPress](https://img.shields.io/badge/WordPress-CMS-blue?logo=wordpress) ![Bash](https://img.shields.io/badge/Bash-Scripting-green?logo=gnu-bash)


Este projeto fornece um guia passo a passo para criar e configurar uma infraestrutura completa na **AWS**, utilizando serviços como **VPC, Security Groups, RDS, EFS, Launch Template, Load Balancer, Auto Scaling e CloudWatch**.  


É ideal para aqueles que querem implementar uma arquitetura na nuvem.



  <img width="200" height="165" alt="pngwing com (6)" src="https://github.com/user-attachments/assets/e3209c76-d5e2-43a3-9570-95d0b334e667" />


## 📂 Estrutura do Projeto

  - [1. Criando VPC](https://github.com/VitoriaAmelia/AWS--ProjetoWP/blob/main/1.%20CriandoVPC.md)
  - [2. Configurando SG](https://github.com/VitoriaAmelia/AWS--ProjetoWP/blob/main/2.%20Configurando%20SG.md)
  - [3. Criando RDS](https://github.com/VitoriaAmelia/AWS--ProjetoWP/blob/main/3.%20Criando%20RDS.md)
  - [4. Criando EFS](https://github.com/VitoriaAmelia/AWS--ProjetoWP/blob/main/4.%20Criando%20EFS.md)
  - [5. Criando Launch Template](https://github.com/VitoriaAmelia/AWS--ProjetoWP/blob/main/5.%20Criando%20Launch%20Template.md)
  - [6. Criando Load Balancer](https://github.com/VitoriaAmelia/AWS--ProjetoWP/blob/main/6.%20Criando%20Load%20Balancer.md)
  - [7. Criando Auto Scaling](https://github.com/VitoriaAmelia/AWS--ProjetoWP/blob/main/7.%20Criando%20Auto%20Scaling.md)
  - [9. Criando CloudWatch](https://github.com/VitoriaAmelia/AWS--ProjetoWP/blob/main/9.%20Criando%20CloudWatch.md)
  - [10. Verificações](https://github.com/VitoriaAmelia/AWS--ProjetoWP/blob/main/10.%20Verfica%C3%A7%C3%B5es.md)
  - [Dicas: Variáveis](https://github.com/VitoriaAmelia/AWS--ProjetoWP/blob/main/Dicas%3A%20Vari%C3%A1veis.md)


## 📝 Como Utilizar

  - Seguir a ordem dos arquivos Markdown para criar a infraestrutura passo a passo  
  - Configurar cada serviço conforme descrito nas etapas 


## 🛠 Tecnologias e Conceitos Utilizados

  - **Infraestrutura como Serviço (IaaS)** – EC2, RDS, EFS, VPC, Load Balancer, Auto Scaling.  
  - **Monitoramento e observabilidade** – CloudWatch.  
  - **Gerenciamento de rede e segurança** – Security Groups, Subnets, Gateways.  
  - **Automação / Templates / Containers** – Launch Templates, User Data (scripts de inicialização), Docker, Docker Compose v2.34.0.  
  - **Computação em nuvem** – uso de AWS como plataforma de cloud computing.

## ✏️ Arquitetura
  - Obs: Ao invés de quatro subnets, foram utilizadas duas, sendo elas
    - Duas públicas
    - Duas privadas

  ![Image](https://github.com/user-attachments/assets/fb8f3c81-d449-4eaf-ae4e-12e01a643429)

## 🎯 Objetivos do Projeto

  - Criar uma aplicação **WordPress** que será distribuída em múltiplas instâncias de EC2 por meio de um **Auto Scaling Group (ASG)**, com balanceamento de carga fornecido por um **Application Load Balancer (ALB)**.  
  - Garantir que o armazenamento de arquivos será centralizado e compartilhado através do **Amazon Elastic File System (EFS)**, enquanto os dados da aplicação serão armazenados em um banco relacional com o **Amazon RDS**.





