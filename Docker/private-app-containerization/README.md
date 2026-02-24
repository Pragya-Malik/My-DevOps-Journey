# Private Application Containerization (Docker)

## Overview

This project demonstrates containerizing a private web application using Docker.
The application source code is private, but this repository showcases the containerization workflow, Dockerfile design, and deployment process.

The goal is to understand how to build, run, and deploy an application inside a Docker container in a production-like environment.

---

## Objectives

* Create a production-ready Dockerfile
* Build the application inside a Docker image
* Run the container with proper port mapping
* Understand container lifecycle
* Deploy container on AWS EC2
* Configure Security Groups for external access

---

## Docker Concepts Demonstrated

* Dockerfile instructions (FROM, WORKDIR, COPY, RUN, CMD)
* Image build process
* Difference between build time and runtime
* Port mapping (`-p`)
* Container logs and debugging
* Deployment workflow

---

## Project Structure

```
private-app-containerization/
 ├─ Dockerfile
 ├─ .dockerignore
 ├─ README.md
 └─ screenshots/
```

---

## Dockerfile Explanation

* **FROM** → Uses Node.js base image
* **WORKDIR** → Sets application directory inside container
* **COPY package*.json** → Copies dependency files first for caching
* **RUN npm ci** → Installs dependencies
* **COPY . .** → Copies application files
* **RUN npm run build** → Creates production build
* **EXPOSE 3000** → Documents application port
* **CMD** → Starts the application container

---

## Build and Run

Build image:

```
docker build -t <private-app .>
```

Run container:

```
docker run -d -p 3000:3000 <private-app>
```

Check running container:

```
docker ps
```

View logs:

```
docker logs <container_name>
```

---

## Deployment Notes (AWS EC2)

* Built the Docker image on an EC2 instance
* Ran the container with port mapping
* Initially the application was not accessible externally
* Identified that the Security Group was blocking port 3000
* Added inbound rule for port 3000
* Application became accessible via public IP

---

## Screenshots

This folder contains:

* Docker image build output
* Running container (`docker ps`)
* Application accessible in browser
* EC2 instance setup
* Security group configuration

---

## Key Learnings

* Containers stop when the main process exits
* Application build must happen inside the Docker image
* Difference between EXPOSE and port mapping
* Cloud firewall can block running containers
* Importance of `.dockerignore`
* Debugging container networking issues

---

## Future Improvements

* Multi-stage Dockerfile
* Docker Compose setup
* Push image to Docker Hub
* CI/CD pipeline integration
* Production optimization

---

