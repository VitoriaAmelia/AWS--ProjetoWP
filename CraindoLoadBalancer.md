# 🌐 Load Balancer

## Passo a Passo

1. Procure **Load Balancer** no menu lateral da EC2  

   <img src="imagem" alt="Imagem" />

---

2. Clique em **Create Load Balancer**  

   <img src="imagem" alt="Imagem" />

---

3. Escolha **Application Load Balancer**  

   <img src="imagem" alt="Imagem" />

---

4. Dê um nome ao Load Balancer  

---

5. Selecione **Internet Facing**  

   <img src="imagem" alt="Imagem" />

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

---

11. Depois de criar, volte e selecione o **Target Group** criado  

---

12. Crie o **Load Balancer**  

---

## Configurando o Target Group

1. Selecione **Instances**  

   <img src="imagem" alt="Imagem" />

---

2. Siga com o protocolo **HTTP** na porta **80**  

   <img src="imagem" alt="Imagem" />

---

3. Selecione sua **VPC** e siga com **HTTP1**  

---

4. Deixe o caminho **Health Check** padrão  

   <img src="imagem" alt="Imagem" />

---

5. Modifique os números abaixo  

   <img src="imagem" alt="Imagem" />
