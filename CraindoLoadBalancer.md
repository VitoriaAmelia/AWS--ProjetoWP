# 🌐 Load Balancer

## Passo a Passo

### 1. Procure **Load Balancer** no menu lateral da EC2

   ![Imagem](imagem)

---

### 2. Clique em **Create Load Balancer**

   ![Imagem](imagem)

---

### 3. Escolha **Application Load Balancer**

   ![Imagem](imagem)

---

### 4. Dê um nome ao Load Balancer

---

### 5. Selecione **Internet Facing**

   ![Imagem](imagem)

---

### 6. Selecione a **VPC** do projeto

   ![Imagem](imagem)

---

### 7. Marque as duas zonas e escolha suas respectivas **subnets públicas**

   ![Imagem](imagem)

---

### 8. Selecione o **SG** do Load Balancer

   ![Imagem](imagem)

---

### 9. Em **Listening and Routing**, vá em **Create Target Group**

   ![Imagem](imagem)

---

### 10. Role mais para baixo o documento para achar o passo a passo da configuração do **Target Group** e depois volte para seguir os últimos dois passos.

---

### 11. Depois de criar, volte e selecione o **Target Group** criado

---

### 12. Crie o **Load Balancer**

---

## Configurando o Target Group

### 1. Selecione **Instances**

   ![Imagem](imagem)

---

### 2. Siga com o protocolo **HTTP** na porta **80**

   ![Imagem](imagem)

---

### 3. Selecione sua **VPC** e siga com **HTTP1**

---

### 4. Deixe o caminho **Health Check** padrão

   ![Imagem](imagem)

---

### 5. Modifique os números abaixo

   ![Imagem](imagem)
