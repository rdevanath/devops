# DevOps CI/CD Pipeline Portfolio

This repository demonstrates hands-on DevOps pipeline implementation using Azure DevOps YAML with real-world deployment patterns.

## 🧰 Tech Stack

Azure DevOps YAML | Python | Maven | Spring Boot | Tomcat | AWS EC2 | Docker | OpenSSH

CI/CD | DevOps | Cloud Deployment | Secure Automation

---

## 🔹 What this portfolio demonstrates

✔ CI/CD pipeline design  
✔ Blue-green-like deployment logic  
✔ Multi-job modular builds  
✔ Secure secret handling  
✔ Docker containerization  
✔ AWS EC2 deployment automation  
✔ Production-style multi-stage pipelines  

---

## 🏗 Architecture patterns used

- Single-job linear CI
- Multi-job modular CI/CD
- Multi-stage production deployment
- Secure file injection
- Parameterized runtime infrastructure

---

## 💡 Why this matters

These pipelines simulate real-world DevOps environments:

- Production release structure
- Failure recovery handling
- Secure key management
- Containerized workloads
- Cloud VM deployment automation

---

## 🚀 Pipelines Overview

Seven Azure DevOps YAML pipelines demonstrating progressive CI/CD patterns — from Python deployments to enterprise Java and Docker containerization.

### 1️⃣ Python Blue-Green (Single Job)
- Deploy v1 → wait 10s
- Kill via port 8000
- Deploy v2
- Automatic fallback to v1
- Artifact handling

### 2️⃣ Python Modular CI/CD
- Build job → publish artifacts
- Deploy job → v1 → v2 switch
- Cleaner job separation

### 3️⃣ Secure SCP Deployment
- Downloads `key.pem` from Secure Files
- PowerShell SCP to Ubuntu server
- No secrets stored in repo

### 4️⃣ Java WAR → Tomcat (AWS EC2)
- Maven build (WAR)
- SCP to EC2
- Production deployment stage
- Controlled Tomcat restart

### 5️⃣ Spring Boot JAR Deployment
- Maven build
- SCP to AWS Linux
- Remote `nohup java -jar` execution

### 6️⃣ Minimal Docker CI
- `docker build` only
- Tagged with build number

### 7️⃣ Parameterized Docker Runtime
- Build + run container
- Dynamic port mapping at queue time

---
