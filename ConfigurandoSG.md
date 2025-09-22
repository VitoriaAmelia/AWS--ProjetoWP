# 🔐 Configurando Security Groups

## Criando Security Groups

1. No menu lateral da VPC, clique em **Security Groups**  
![Imagem]()

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
