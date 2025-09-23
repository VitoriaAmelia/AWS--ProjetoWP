# 🌐 Auto Scaling

## Passo a Passo

1. Vá no menu lateral da **EC2** e procure por **Auto Scaling Groups**

<img width="329" height="159" alt="Image" src="https://github.com/user-attachments/assets/00428911-ae4c-47f3-aba9-bccbe76aabf2" />


---

2. Crie um **Auto Scaling Group**

<img width="324" height="136" alt="Image" src="https://github.com/user-attachments/assets/69a5b375-1640-4856-8495-025deaf09588" />


---

3. Escolha um nome

4. Escolha o **Launch Template**

<img width="2534" height="1462" alt="Image" src="https://github.com/user-attachments/assets/717140b7-5a25-4fde-a1f2-f104add4f5ff" />

5. Vá para a próxima página  

---

6. Selecione a **VPC**

7. Selecione as duas **subnets privadas** nas suas respectivas zonas

8. Selecione **Balanced Best Effort**  

<img width="3021" height="1309" alt="Image" src="https://github.com/user-attachments/assets/cfdaec46-bec8-4d96-b0bb-7a478024d6d4" />

---

9. Selecione **Attach to an existing Load Balancer**

10. Selecione **Choose from your Load Balancer Target Groups**

11. Adicione seu **Load Balancer**

<img width="2762" height="1301" alt="Image" src="https://github.com/user-attachments/assets/1f434fe3-4bdf-42bd-8740-1646ab6634b3" />

---

12. Modifique os valores do **Group Size** e do **Scaling**

13. Selecione **Enable Group Metrics Collection within CloudWatch**  

<img width="1907" height="1196" alt="Image" src="https://github.com/user-attachments/assets/21b22ae4-00b5-457a-9d78-586b48c8aa54" />
---

14. Avance e crie seu **Auto Scaling**
