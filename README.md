# 🛒 E-Commerce Web App – DevOps Project (Docker | Kubernetes | Jenkins | Monitoring)

This repository contains a fully working **E-Commerce Web Application** built with HTML/CSS/JS, packaged using **Docker**, deployed on **Kubernetes**, with **CI/CD via Jenkins**, and **monitoring using Prometheus and Grafana** — hosted on an **Azure Virtual Machine**.

---

## 📌 Project Features

✅ Static frontend (HTML, CSS, JS) for a simple kids' beds e-commerce store  
✅ Dockerized with best practices  
✅ Kubernetes deployment with `Deployment` and `Service` YAMLs  
✅ CI/CD pipeline with **Jenkins** and **GitHub Webhook Integration**  
✅ **Prometheus + Grafana** stack for full monitoring and dashboard setup  
✅ All running on a VM: **Azure Standard D2s v3 (2 vCPUs, 8 GiB RAM)**  
✅ Git push triggers Jenkins → builds Docker image → pushes to Docker Hub → deploys to K8s

---

## 🧱 Technologies Used

| Category        | Tools                            |
|----------------|----------------------------------|
| CI/CD Pipeline | GitHub, Jenkins, Webhooks        |
| Containerization| Docker, Docker Hub               |
| Orchestration  | Kubernetes (Minikube)            |
| Monitoring     | Prometheus, Grafana              |
| Cloud          | Azure Virtual Machine (Ubuntu)   |

---

## 📁 Project Structure

```bash
.
├── index.html
├── styles.css
├── script.js
├── Dockerfile
├── docker-compose.yml
├── Jenkinsfile
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── ansible/
│   ├── hosts.ini
│   └── playbook.yml


---
🚀 How to Run This Project (Step-by-Step)
1️⃣ Fork & Clone
git clone https://github.com/Syed-Amjad/e-commerce-web.git
cd e-commerce-web

2️⃣ Docker: Build & Run Locally
docker build -t amjad835/static-web .
docker run -d -p 8080:80 amjad835/static-web
Access the site: http://localhost:8080

3️⃣ Docker Compose (Optional)
docker-compose up -d

4️⃣ Kubernetes Deployment (Using Minikube)

kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

# Access the app (assuming NodePort)
kubectl get svc
kubectl port-forward svc/static-web-service 8080:80

5️⃣ Jenkins CI/CD Pipeline
Install Jenkins and start it:
java -jar jenkins.war --httpPort=8081


Payload URL: http://<your-ip>:8081/github-webhook/
Create a pipeline job pointing to your devops-branch

6️⃣ Monitoring with Prometheus and Grafana
# Run Prometheus and Grafana using Docker
cd monitoring
docker-compose up -d

# Prometheus: http://<your-ip>:9090
# Grafana:    http://<your-ip>:3000
# Default login: admin / admin

# Add Prometheus as data source in Grafana and import Kubernetes dashboards

📎 GitHub Repository
🔗 https://github.com/Syed-Amjad/e-commerce-web

Feel free to fork this repository, explore the pipeline, and practice full DevOps deployment!
🙋‍♂️ Author
Syed Amjad Ali
DevOps & AI Enthusiast | Software Developer
📍 Working on real-world AI + Cloud + DevOps projects
🌐 http://www.linkedin.com/in/syed-amjad-ali-4188002a0
