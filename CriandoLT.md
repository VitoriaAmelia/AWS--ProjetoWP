# 🚀 Criando Launch Template na EC2

## Passo a Passo

1. No menu lateral da **EC2**, procure por **Launch Template**  
2. Clique em **Create Launch Template**  

![Imagem]()

---

3. Dê um **nome** e uma **descrição** ao template  
4. Selecione **Auto Scaling Guidance**  

![Imagem]()

---

5. Escolha a **Amazon Linux** como imagem (AMI)  

![Imagem]()

6. Selecione **t2.micro** como tipo de instância  
7. Selecione **Create new key pair**  
8. Dê um **nome** e crie a chave  

![Imagem]()

---

9. Selecione o **Security Group** da EC2  

![Imagem]()

10. Adicione **tags**, se necessário  

![Imagem]()

---

11. Role até **Advanced Details**  
12. Cole sua **UserData**  

![Imagem]()

13. Clique em **Create Launch Template**  

