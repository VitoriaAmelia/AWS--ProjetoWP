# 🔐 Configurando Security Groups

## Criando Security Groups

1. No menu lateral da VPC, clique em **Security Groups**  
   <img width="729" height="110" alt="Image" src="https://github.com/user-attachments/assets/e15eb533-450c-4b5f-b604-43a5443fbf15" />

2. Clique em **Create Security Groups**  
3. Preencha:  
   - Nome do SG  
   - Descrição  
   - Selecione a VPC criada  

4. Crie **4 Security Groups**:  
   - SG-EC2  
   - SG-EFS  
   - SG-LB  
   - SG-RDS
  
   <img width="711" height="291" alt="Image" src="https://github.com/user-attachments/assets/1409d424-e805-48f1-93a1-6b07f5b94172" />

---

## Editando Regras

1. Volte para a tela de **Security Groups**  
2. Selecione o SG desejado  
3. No painel inferior, clique em **Edit Inbound Rules**  

![Imagem]()

4. Clique em **Add Rule** para adicionar novas regras  

![Imagem]()

5. Configure os parâmetros necessários e clique em **Salvar**  

![Imagem]()  
![Imagem]()

---

### 📥 Inbound Rules
Regras de entrada para cada Security Group.  

### 📤 Outbound Rules
Mesma lógica, mas editando **Outbound** em vez de **Inbound**.  

---

## Exemplos de Configuração

### 🖥 SG-EC2  
![Imagem]()  
![Imagem]()  

### 💾 SG-RDS  
![Imagem]()  
![Imagem]()  

### 📂 SG-EFS  
![Imagem]()  
![Imagem]()  

### 🌍 SG-LB  
![Imagem]()  

