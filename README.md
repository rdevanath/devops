# DevOps Portfolio

This repository demonstrates hands-on DevOps pipeline implementation using Azure DevOps YAML, Infrastructure as Code, Cloud Provisioning, Automation, and Containerization best practices.

## 🧰 Tech Stack

Azure DevOps YAML | Python | Maven | Spring Boot | Tomcat | AWS EC2 | Docker | OpenSSH

Terraform | AWS | Ansible | Docker | Docker Compose | Linux | Infrastructure as Code | Containerization

---

## 🚀 Pipelines Overview

Seven Azure DevOps YAML pipelines demonstrating progressive CI/CD patterns — from Python deployments to enterprise Java and Docker containerization.

These pipelines simulate real-world DevOps environments:

- Production release structure
- Failure recovery handling
- Secure key management
- Containerized workloads
- Cloud VM deployment automation

## 🔹 What this portfolio demonstrates

✔ CI/CD pipeline design  
✔ Blue-green-like deployment logic  
✔ Multi-job modular builds  
✔ Secure secret handling  
✔ Docker containerization  
✔ AWS EC2 deployment automation  
✔ Production-style multi-stage pipelines  

## 🏗 Architecture patterns used

- Single-job linear CI
- Multi-job modular CI/CD
- Multi-stage production deployment
- Secure file injection
- Parameterized runtime infrastructure
  
---

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

## 🎯 Hands-on DevOps projects demonstrating Infrastructure as Code, Cloud Provisioning, Automation, and Containerization best practices.

- Infrastructure as Code (Terraform)
- Configuration Management (Ansible)
- AWS Cloud Provisioning
- Containerization & Image Optimization
- Multi-Container Orchestration
- DevOps Workflow Automation

---

### 🔧 Configuration Management – Ansible

Automated installation of OpenJDK 21 and Maven on Ubuntu systems using idempotent playbooks.

**Key Highlights**
- Package automation via APT
- Installation validation (`java -version`, `mvn -version`)
- Idempotent, repeatable execution
- Designed for VM-based environments using inventory files

**Tech:** Ansible, Ubuntu Linux

**Value:** Demonstrates production-style configuration management and environment consistency.

---

### ☁️ Infrastructure as Code – Terraform (AWS EC2)

Provisioned AWS EC2 infrastructure using Terraform.

**Key Highlights**
- Deploys AWS machine
- Uses data sources for existing Security Groups
- SSH key association
- Resource tagging strategy
- Clean provider configuration

**Tech:** Terraform, AWS EC2

**Value:** Shows real-world cloud provisioning, dependency management, and scalable IaC design. Structured for future modularization and multi-environment expansion.

---

### 🐳 Containerization – Docker

### Multi-Stage Spring Boot (JAR)
- Maven builder stage
- Lightweight JRE runtime image
- 30–50% smaller production image
- Exposes 8080

### Multi-Stage Tomcat (WAR)
- Dependency caching (`mvn dependency:go-offline`)
- Clean Tomcat 10 runtime
- ROOT.war deployment pattern
- Optimized container layering

**Tech:** Docker, Maven, Spring Boot, Tomcat

**Value:** Demonstrates enterprise container best practices, optimized builds, and deployment strategy understanding (JAR vs WAR).

---

### 🧩 Multi-Container Orchestration – Docker Compose

Flask + Redis application stack using Docker Compose.

**Key Highlights**
- Multi-service architecture
- Container networking
- Port mapping (8000 → 5000)
- One-command deployment (`docker compose up`)

**Tech:** Docker Compose, Flask, Redis

**Value:** Shows progression from containerization to service orchestration — foundation for Kubernetes environments.

---
