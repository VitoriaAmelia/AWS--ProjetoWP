# 💾 Criando RDS (MySQL)

## Acessando o Serviço

1. Pesquise por **RDS**  
2. Clique em **Databases**  

  <img width="716" height="201" alt="Image" src="https://github.com/user-attachments/assets/079809be-84a8-4423-923b-09a8609c1eb0" />

3. Clique em **Create Database**  

<img width="557" height="127" alt="Image" src="https://github.com/user-attachments/assets/79bbe1d5-bd5d-44cd-b88f-464abbb3e465" />

---

## Database Creation Method & Engine Options
- Selecione **MySQL**  

<img width="648" height="396" alt="Image" src="https://github.com/user-attachments/assets/15027500-4d88-4e9e-94ee-c19c94c2b20f" />

---

## Templates & Availability
- Escolha **Free Tier**  
- Em **Availability and Durability**, selecione:  
  - *Single-AZ DB instance deployment (1 instance)*  

<img width="639" height="371" alt="Image" src="https://github.com/user-attachments/assets/eb01dd5c-c58e-4e18-b7e8-63b3bc2d1bff" />

---

## Settings
- Identificador para o DB  
- Master name (padrão ou alterado)  
- Senha (anote e guarde com segurança)  
- Modo: **Self-managed**  

<img width="629" height="263" alt="Image" src="https://github.com/user-attachments/assets/e90e82a7-cb6e-4b71-adbf-349b1e409658" />  

<img width="630" height="116" alt="Image" src="https://github.com/user-attachments/assets/0c583aae-6af0-4230-8aeb-45ef9a1aab33" />

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

