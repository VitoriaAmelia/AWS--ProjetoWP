# 💾 Criando RDS (MySQL)

## Acessando o Serviço

1. Pesquise por **RDS**  
2. Clique em **Databases**  


    <img width="716" height="201" alt="Image" src="https://github.com/user-attachments/assets/3cf7e964-cbf2-4b4a-b694-69fbfafee937" />

3. Clique em **Create Database**  


    <img width="557" height="127" alt="Image" src="https://github.com/user-attachments/assets/218b2d2e-27b0-4ce4-b15f-d968d82fa115" />

---

## Database Creation Method & Engine Options
- Selecione **MySQL**  

  <img width="639" height="371" alt="Image" src="https://github.com/user-attachments/assets/bcad18e9-6a14-452e-9c44-8aaf895ecc82" />

---

## Templates & Availability
- Escolha **Free Tier**  
- Em **Availability and Durability**, selecione:  
  - *Single-AZ DB instance deployment (1 instance)*  

  <img width="648" height="396" alt="Image" src="https://github.com/user-attachments/assets/43e51046-e7d1-4859-9220-6af7881d1b2e" />

---

## Settings
- Colque um nome identificador para o DB  
- Deixe o master name com o padrão (guarde para o database)
- Modo: **Self-managed**  
- Escolha uma senha (guarde para o database)  

  <img width="635" height="385" alt="Image" src="https://github.com/user-attachments/assets/9151211b-a2a9-4212-acd3-39f863267559" />

  <img width="637" height="198" alt="Image" src="https://github.com/user-attachments/assets/dac03c97-87e0-4dd7-99cc-f8f728917b23" />

---

## Instance Configuration
- Tipo: **db.t3.micro**  

  <img width="629" height="299" alt="Image" src="https://github.com/user-attachments/assets/034e62b7-1602-48dd-9226-f9a55c7b9476" />

---

## Storage
- Em **Additional storage configuration**, habilite **Enable autoscaling**  

  <img width="630" height="116" alt="Image" src="https://github.com/user-attachments/assets/8a433958-7c02-4da9-a6a3-bab25fabaa7b" />

---

## Connectivity
- Verifique configurações padrão
- 
  <img width="629" height="263" alt="Image" src="https://github.com/user-attachments/assets/b4a9b24b-844b-4946-9d3b-b54b1f9c05c8" />
  
- Selecione a **VPC do projeto**  
- Marque **Create new Subnet Group**  
- Em **Existing VPC Security Groups**, selecione o **SG-RDS**  

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






