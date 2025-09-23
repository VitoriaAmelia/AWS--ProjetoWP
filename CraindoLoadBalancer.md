# 🌐 Load Balancer

## Passo a Passo

1. Procure **Load Balancer** no menu lateral da EC2  

   <img width="187" height="101" alt="Image" src="https://github.com/user-attachments/assets/707bfc30-96fe-4cb4-b171-e90441190879" />

---

2. Clique em **Create Load Balancer**  

   <img width="473" height="138" alt="Image" src="https://github.com/user-attachments/assets/e2f6fbbf-9905-4d3e-8b89-e3ebd5211dd0" />

---

3. Escolha **Application Load Balancer**  

   <img width="216" height="303" alt="Image" src="https://github.com/user-attachments/assets/346cd161-b588-4316-8fc9-8ed1786f629a" />

---

4. Dê um nome ao Load Balancer  

5. Selecione **Internet Facing**  

   <img width="619" height="457" alt="Image" src="https://github.com/user-attachments/assets/a7175519-9b1b-4214-99e3-fa60a57c9c70" />

---

6. Selecione a **VPC** do projeto  

   <img src="imagem" alt="Imagem" />

---

7. Marque as duas zonas e escolha suas respectivas **subnets públicas**  

   <img src="imagem" alt="Imagem" />

---

8. Selecione o **SG** do Load Balancer  

   <img src="imagem" alt="Imagem" />

---

9. Em **Listening and Routing**, vá em **Create Target Group**  

   <img src="imagem" alt="Imagem" />

---

10. Role mais para baixo o documento para achar o passo a passo da configuração do **Target Group** e depois volte para seguir os últimos dois passos.  

11. Depois de criar, volte e selecione o **Target Group** criado  

12. Crie o **Load Balancer**  

---

## Configurando o Target Group

1. Selecione **Instances**  

   <img width="430" height="275" alt="Image" src="https://github.com/user-attachments/assets/35638a95-7bfd-4661-8fde-8659d8246efc" />

---

2. Siga com o protocolo **HTTP** na porta **80**  

   <img width="405" height="389" alt="Image" src="https://github.com/user-attachments/assets/a70a0a2e-3393-41ec-a44c-0969461c0f4b" />

---

3. Selecione sua **VPC** e siga com **HTTP1**

   <img width="393" height="250" alt="Image" src="https://github.com/user-attachments/assets/2cbc3c44-d3dd-4491-89d2-693a6c5184d1" />


---

4. Deixe o caminho **Health Check** padrão  

   <img width="328" height="123" alt="Image" src="https://github.com/user-attachments/assets/8f769425-d3bb-4363-b576-717ac66ce2b0" />

---

5. Modifique os números abaixo  

   <img width="258" height="323" alt="Image" src="https://github.com/user-attachments/assets/4d7ac1e7-c2d8-42f7-9026-445a444dd9c5" />











