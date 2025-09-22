# 💾 Criando RDS (MySQL)

## Acessando o Serviço

1. Pesquise por **RDS**  
2. Clique em **Databases**  

![Imagem]()

3. Clique em **Create Database**  

![Imagem]()

---

## Database Creation Method & Engine Options
- Selecione **MySQL**  

![Imagem]()

---

## Templates & Availability
- Escolha **Free Tier**  
- Em **Availability and Durability**, selecione:  
  - *Single-AZ DB instance deployment (1 instance)*  

![Imagem]()

---

## Settings
- Identificador para o DB  
- Master name (padrão ou alterado)  
- Senha (anote e guarde com segurança)  
- Modo: **Self-managed**  

![Imagem]()  
![Imagem]()

---

## Instance Configuration
- Tipo: **db.t3.micro**  

![Imagem]()

---

## Storage
- Em **Additional storage configuration**, habilite **Enable autoscaling**  

![Imagem]()

---

## Connectivity
- Verifique configurações padrão  
- Selecione a **VPC do projeto**  
- Marque **Create new Subnet Group**  
- Em **Existing VPC Security Groups**, selecione o **SG-RDS**  

![Imagem]()  
![Imagem]()  

---

## Tags, Authentication & Monitoring
- Tags (opcional)  
- Autenticação: **Password Authentication**  
- Habilite **Monitoring**  

![Imagem]()  
![Imagem]()

---

## Additional Configuration
- Nome do database (anote)  
- Desabilite **Automated Backup** (para reduzir custos)  

![Imagem]()

---

## Finalizando
- Confira o resumo  
- Clique em **Create Database**  

![Imagem]()
