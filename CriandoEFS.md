# 📂 Criando EFS

## Acessando o Serviço

1. Pesquise por **EFS**  
2. Clique em **File Systems**  

![Imagem]()

3. Clique em **Create File System**  

![Imagem]()

---

## Configurações Iniciais
- Nomeie o File System  
- Selecione a **VPC correta**  
- Clique em **Customize**  

![Imagem]()

- Desabilite **Enable Automatic Backups**  

![Imagem]()

- Em **Lifecycle Policy**, selecione **None**  

![Imagem]()

- Modo: **Bursting**  

![Imagem]()

---

## Configuração de Rede
1. Escolha **2 Availability Zones**:  
   - `us-east-1a`  
   - `us-east-1b`  

2. Selecione as **Subnets Privadas** correspondentes  
3. Configure os **Security Groups do EFS**  

---

## Finalizando
- Avance até a página final  
- Clique em **Create**  

Depois, volte para **File Systems** e anote o **File System ID**  

![Imagem]()
