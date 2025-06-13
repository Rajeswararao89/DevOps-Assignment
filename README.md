DevOps Internship Assignment
This is a full-stack web application developed as part of a DevOps Internship Assignment. The project is structured as a
monorepo and consists of a Python Flask-based backend and a React-based frontend using Next.js. Both services are
containerized with Docker and orchestrated using Docker Compose.
Project Structure
DevOps-Assignment/
 backend/
 app.py
 Dockerfile
 frontend/
 pages/
 package.json
 Dockerfile
 docker-compose.yml
 README.md
Technologies Used
- Frontend: Next.js (React), JavaScript, Axios
- Backend: Flask (Python)
- Containerization: Docker
- Orchestration: Docker Compose
- Version Control: Git + GitHub
- Platform: Ubuntu Linux (WSL or native)
Getting Started
1. Clone the Repository
git clone https://github.com/Rajeswararao89/DevOps-Assignment.git
cd DevOps-Assignment
2. Prerequisites
Ensure you have the following installed:
- Docker
- Docker Compose
- Git
- Node.js & npm (only if running frontend manually)
3. Running with Docker Compose
docker-compose up --build
Frontend: http://localhost:3000
Backend API: http://localhost:5000/api/message
API Endpoint
GET /api/message
Response:
{ "message": "Hello from backend" }
Frontend Features
- Simple interface to fetch and display message from backend API.
- Built using Next.js and Axios.
Docker Instructions
Build and Run Backend Separately
cd backend
docker build -t flask-backend .
docker run -p 5000:5000 flask-backend
Build and Run Frontend Separately
cd frontend
docker build -t nextjs-frontend .
docker run -p 3000:3000 nextjs-frontend
docker-compose.yml Overview
version: '3'
services:
 backend:
 build: ./backend
 ports:
 - "5000:5000"
 frontend:
 build: ./frontend
 ports:
 - "3000:3000"
 depends_on:
 - backend
Notes
- Make sure ports 3000 and 5000 are free before running the app.
- If any port conflicts occur, modify the docker-compose.yml file accordingly.
- For best performance, run on Ubuntu Linux or WSL.
Future Improvements
- Add CI/CD with GitHub Actions
- Deploy to AWS ECS using Terraform
- Add monitoring with AWS CloudWatch
- Add unit and integration tests
License
This project is licensed under the MIT License.
Author
Rajeswararao
GitHub Profile: https://github.com/Rajeswararao89
Email: rajeswararao688@gmail.com
