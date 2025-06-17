# DevOps Internship Assignment 🚀

This is a full-stack web application developed as part of a DevOps internship assignment. The project demonstrates end-to-end implementation of a CI/CD pipeline using GitHub Actions, Docker, Terraform, and AWS ECS (Fargate). Both frontend and backend are containerized and deployed securely to the cloud.

---

## 📁 Project Structure

.
├── backend/ # Flask-based backend application
├── frontend/ # Next.js-based frontend application
├── terraform/ # Terraform configuration files for AWS resources
├── .github/workflows/ # GitHub Actions CI/CD pipelines
├── Dockerfile # Base Dockerfile (if needed)
├── docker-compose.yml # Compose file for local testing
├── ecs-cluster.tf # ECS cluster Terraform config
├── .gitignore
└── README.md

---

## 🧰 Tech Stack

**Frontend**: Next.js  
**Backend**: Python Flask  
**Containerization**: Docker  
**Orchestration**: AWS ECS (Fargate)  
**Infrastructure as Code**: Terraform  
**CI/CD**: GitHub Actions  
**Monitoring**: AWS CloudWatch  
**IAM**: Fine-grained roles for ECS tasks and execution

---

## ⚙️ CI/CD Pipeline (GitHub Actions)

### Trigger: On every push to `main` branch

### Backend Workflow (`backend-ci.yml`)
- Checkout code
- Set up Python
- Build Docker image for backend
- Push to AWS ECR
- Trigger Terraform deployment

### Frontend Workflow (`frontend-ci.yml`)
- Checkout code
- Set up Node.js
- Build Docker image for frontend
- Push to AWS ECR
- Trigger Terraform deployment

Each workflow has its own set of secrets configured in GitHub (`AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, `AWS_REGION`, etc.)

---

## 🌐 Deployment (Terraform on AWS ECS Fargate)

**Deployed Components:**
- ECS Cluster (Fargate launch type)
- Task Definitions for frontend and backend
- Services to run tasks
- IAM roles (execution + task)
- VPC, subnets, security groups (optional)
- ALB or Public IP for service access

### Terraform Directory Includes:
- `main.tf`: Main config
- `ecs-cluster.tf`: ECS Cluster
- `ecs-service.tf`: ECS Service & Task
- `iam.tf`: Roles and policies
- `variables.tf` and `outputs.tf`

---

## 🧪 How to Run Locally

### Prerequisites
- Docker & Docker Compose installed
- Python & Node.js installed

### Run Using Docker Compose
```bash
docker-compose up --build
Backend will be accessible at http://localhost:5000

Frontend at http://localhost:3000

☁️ How to Deploy on AWS
Initialize Terraform

bash
Copy
Edit
cd terraform/
terraform init
Plan Infrastructure

bash
Copy
Edit
terraform plan
Apply Infrastructure

bash
Copy
Edit
terraform apply
Access Services

Get ECS Service Public IP or ALB DNS from terraform output

📌 Future Enhancements
Add unit and integration tests

Use Terraform Cloud for remote state management

Add automated rollback on failure

Add monitoring dashboards in CloudWatch

🙌 Author
Rajeswara Rao
DevOps Enthusiast | AWS | Terraform | CI/CD Pipelines

---

Let me know if you'd like me to:
- Add badges (build passing, AWS deploy)
- Write documentation for each GitHub Action file
- Generate Terraform file templates

Happy to continue!
