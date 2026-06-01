# ICT171 Cloud Server Project

## Personal Portfolio Website on Azure

**Student Name:** Clinton Narankaik  
**Student Number:** 34874536  
**Public IP Address:**  http://20.70.155.162/
**DNS Name:**  clintonportfolio2026.australiaeast.cloudapp.azure.com
**Live Website:**   https://clintonportfolio2026.australiaeast.cloudapp.azure.com
**Video Explainer:** [Insert Video Link]

---

## Project Overview

This project documents the creation of a cloud-hosted personal portfolio website using Microsoft Azure Infrastructure as a Service. The server runs Ubuntu Server 24.04 LTS and uses Nginx as the web server.

The project demonstrates cloud server deployment, SSH access, Linux server administration, web server configuration, DNS setup, SSL/TLS configuration, scripting, and documentation.

---

## Technologies Used

- Microsoft Azure
- Ubuntu Server 24.04 LTS
- Nginx
- SSH
- DNS
- Certbot SSL/TLS
- GitHub
- Bash scripting
- HTML/CSS

---
## Repository Contents

- Azure VM Setup
- Network Configuration
- Nginx Installation
- Website Deployment
- DNS Configuration
- SSL Configuration
- Monitoring Script
- Video Explainer


## Server Setup Steps

### 1. Azure VM Creation

The virtual machine was created using Azure Portal.

Configuration:

| Setting | Value |
|---|---|
| Region | Australia East |
| OS | Ubuntu Server 24.04 LTS |
| Size | B1s |
| Authentication | SSH Key |

Screenshot:

![Azure VM Creation](screenshots/vm-creation.png)

---

### 2. Network Security Group Configuration

Inbound ports opened:

| Port | Purpose |
|---|---|
| 22 | SSH |
| 80 | HTTP |
| 443 | HTTPS |

Screenshot:

![NSG Rules](screenshots/nsg-rules.png)

---

### 3. SSH Access

Command used:

```bash
ssh -i portfolio_key.pem azureuser@YOUR_PUBLIC_IP
