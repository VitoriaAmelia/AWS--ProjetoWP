# 📂 Criando EFS

## Acessando o Serviço

1. Pesquise por **EFS**  
2. Clique em **File Systems**  

   <img width="719" height="198" alt="Image" src="https://github.com/user-attachments/assets/b96c1a38-e7b0-4021-8d9f-1f595233dfd0" />


3. Clique em **Create File System**  

   <img width="494" height="134" alt="Image" src="https://github.com/user-attachments/assets/8095b0a9-f07f-461e-8b5a-3081f78a8959" />

---

## Configurações Iniciais
- Nomeie o File System  
- Selecione a **VPC correta**  
- Clique em **Customize**  

   <img width="440" height="437" alt="Image" src="https://github.com/user-attachments/assets/02121803-a77b-47c7-a59a-b800553adac0" />

- Desabilite **Enable Automatic Backups**  

   <img width="474" height="351" alt="Image" src="https://github.com/user-attachments/assets/999a69fe-24bb-400f-b297-841328a555a0" />

- Nessa etapa, selecione **None**  

   <img width="474" height="366" alt="Image" src="https://github.com/user-attachments/assets/eb8ddf17-6c98-4d23-bbc3-a724a141e2ce" />

- Modo: **Bursting**  

   <img width="487" height="222" alt="Image" src="https://github.com/user-attachments/assets/3e8cffd0-bb7f-483d-a66d-fcedb9ff6c0b" />

---

## Configuração de Rede
1. Escolha **2 Availability Zones**:  
   - `us-east-1a`  
   - `us-east-1b`  

2. Selecione as **Subnets Privadas** correspondentes  
3. Selecione o **Security Groups do EFS**
   
   <img width="650" height="240" alt="image" src="https://github.com/user-attachments/assets/ffff7835-5b8e-40f5-8176-3443569f365a" />
  

---

## Finalizando
- Avance até a página final  
- Clique em **Create**  

Depois, volte para **File Systems** e anote o **File System ID**  

<img width="770" height="177" alt="Image" src="https://github.com/user-attachments/assets/003f1740-43a9-4359-a111-22880e8ab1c0" />












