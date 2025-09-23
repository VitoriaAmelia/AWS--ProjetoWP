# 🌐 Auto Scaling

## Passo a Passo

1. Vá no menu lateral da **EC2** e procure por **Auto Scaling Groups**

    <img width="171" height="57" alt="Image" src="https://github.com/user-attachments/assets/f69b1ae6-d721-4a96-86cf-513519e345f4" />


---

2. Crie um **Auto Scaling Group**

    <img width="324" height="136" alt="Image" src="https://github.com/user-attachments/assets/69a5b375-1640-4856-8495-025deaf09588" />


---

3. Escolha um nome

4. Escolha o **Launch Template**

    <img width="578" height="423" alt="Image" src="https://github.com/user-attachments/assets/a3c1657e-a385-4155-95a8-00d84d8c5920" />

5. Vá para a próxima página  

---

6. Selecione a **VPC**

7. Selecione as duas **subnets privadas** nas suas respectivas zonas

8. Selecione **Balanced Best Effort**  

    <img width="1534" height="462" alt="Image" src="https://github.com/user-attachments/assets/717140b7-5a25-4fde-a1f2-f104add4f5ff" />

---

9. Selecione **Attach to an existing Load Balancer**

10. Selecione **Choose from your Load Balancer Target Groups**

11. Adicione seu **Load Balancer**

    <img width="872" height="833" alt="Image" src="https://github.com/user-attachments/assets/dcade761-a40f-4166-8e9e-57f566b8c898" />
---

12. Modifique os valores do **Group Size** e do **Scaling**

13. Selecione **Enable Group Metrics Collection within CloudWatch**  

    <img width="462" height="250" alt="Image" src="https://github.com/user-attachments/assets/21b22ae4-00b5-457a-9d78-586b48c8aa54" />

---

14. Avance e crie seu **Auto Scaling**
