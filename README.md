# ICT171 Cloud Server Project

## Personal Portfolio Website on Azure

**Student Name:** Clinton Narankaik  
**Student Number:** 34874536  
**Public IP Address:**  http://20.70.155.162/ 
**DNS Name:**  clintonportfolio2026.australiaeast.cloudapp.azure.com 
**Live Website:**   https://clintonportfolio2026.australiaeast.cloudapp.azure.com
**Video Explainer:** 
https://1drv.ms/v/c/cc89f311ed5085a5/IQBXLVpWrBWZSIqmPGnA0g6ZAXFv_F0Q5yBNGt3-d6cZ9XE?e=VDowQQ
---

## Project Overview

This project was completed as part of ICT171 – Introduction to Server Environments and Architectures.

The objective of the project was to deploy and host a personal portfolio website on a cloud-based virtual machine using Microsoft Azure. The project involved creating and configuring an Ubuntu Server virtual machine, securing remote access using SSH, installing and configuring Nginx as a web server, deploying website content, configuring DNS, implementing SSL/TLS encryption using Let's Encrypt, and creating a server monitoring script.

---

## Server Information

**Public IP Address:** 20.70.155.162

**DNS Name:** clintonportfolio2026.australiaeast.cloudapp.azure.com

**Website Link:**
http://clintonportfolio2026.australiaeast.cloudapp.azure.com

**Secure Website Link (HTTPS):**
https://clintonportfolio2026.australiaeast.cloudapp.azure.com

---

## Video Explainer

**Video Link:**
https://1drv.ms/v/c/cc89f311ed5085a5/IQBXLVpWrBWZSIqmPGnA0g6ZAXFv_F0Q5yBNGt3-d6cZ9XE?e=VDowQQ
---

## Technologies Used

* Microsoft Azure
* Ubuntu Server 24.04 LTS
* OpenSSH
* Nginx Web Server
* Let's Encrypt SSL/TLS
* Certbot
* GitHub
* HTML5
* Bash Scripting

---

# Project Documentation

## 1. Azure Virtual Machine Creation

An Ubuntu Server 24.04 LTS virtual machine was created using Microsoft Azure. The virtual machine was configured with:

* Public IP address
* DNS label
* Network Security Group (NSG)
* SSH authentication using key pairs

The Azure VM provides the cloud infrastructure required to host the website.

### Screenshot

<img width="1918" height="1078" alt="Azure VM creation" src="https://github.com/user-attachments/assets/bc831396-3e83-4005-8448-5c4cb0d7c0ae" />


---

## 2. Network Security Group Configuration

Inbound security rules were configured to allow:

| Port | Protocol | Purpose       |
| ---- | -------- | ------------- |
| 22   | TCP      | SSH Access    |
| 80   | TCP      | HTTP Traffic  |
| 443  | TCP      | HTTPS Traffic |

These rules allow secure administration and public access to the website.

### Screenshot

<img width="1917" height="1078" alt="Network Security Group Inbound rules" src="https://github.com/user-attachments/assets/849a25dd-81e7-4e26-8231-f8e04753daeb" />


---

## 3. SSH Access Setup

SSH keys were used instead of passwords to improve security.

Example SSH connection command:

```bash
ssh -i sankaire_key.pem sankaire@20.70.155.162
```

SSH access allowed remote management of the server from a local computer.

### Screenshot

<img width="1912" height="1077" alt="Successfull SSH connection" src="https://github.com/user-attachments/assets/7e1535f7-1de6-467f-a7e2-9b822de6c87d" />

---

## 4. Nginx Installation and Configuration

Nginx was installed using:

```bash
sudo apt update
sudo apt install nginx -y
```

The service was enabled and started using:

```bash
sudo systemctl enable nginx
sudo systemctl start nginx
```

Nginx was used to serve the portfolio website to visitors over the internet.

### Screenshot

<img width="1893" height="1010" alt="Nginx installation" src="https://github.com/user-attachments/assets/8fd17102-25dc-465c-8ce7-43e45e1dd6ff" />

---

## 5. Website Deployment

The website was developed using HTML and deployed to the Nginx web root directory:

```bash
/var/www/html/
```

The main webpage file:

```text
index.html
```

The website contains:

* Personal introduction
* Skills
* Education
* Contact information
* Portfolio information

### Screenshot

<img width="1918" height="1078" alt="Portfolio webpage" src="https://github.com/user-attachments/assets/91a83af7-9889-4225-a1d4-3d0bde287863" />

---

## 6. DNS Configuration

A DNS label was configured through Azure to allow users to access the website using a friendly domain name rather than an IP address.

DNS Name:

```text
clintonportfolio2026.australiaeast.cloudapp.azure.com
```

### Screenshot

<img width="1918" height="1078" alt="DNS configuration" src="https://github.com/user-attachments/assets/8f5b93b0-e7a9-4579-ab8d-2532a681ba98" />

---

## 7. SSL/TLS Configuration

HTTPS was implemented using Let's Encrypt and Certbot.

Example command used:

```bash
sudo certbot --nginx -d clintonportfolio2026.australiaeast.cloudapp.azure.com
```

Benefits of SSL/TLS:

* Encrypts communication
* Improves website security
* Increases user trust

### Screenshot

<img width="1918" height="1078" alt="Certbot" src="https://github.com/user-attachments/assets/f60c24ba-630e-4a9b-902c-16cd10316274" />

---

## 8. Server Monitoring Script

A Bash script was created to verify that Nginx is running.

Example script:

```bash
#!/bin/bash

if systemctl is-active --quiet nginx
then
    echo "Nginx is running"
else
    echo "Nginx is not running"
fi
```

The script helps monitor the availability of the web service.

### Screenshot
<img width="943" height="1078" alt="Deployment cert" src="https://github.com/user-attachments/assets/57e0962f-c0db-4de0-bc5f-53d7cf8b9f60" />
<img width="1917" height="805" alt="Monitoring Script Source Code Output" src="https://github.com/user-attachments/assets/e7d9d8fe-90d0-4b02-9444-12e6c0f935a8" />


---

## Challenges Encountered

### Challenge 1: SSH Key Access

Initially, SSH access failed due to incorrect key permissions and file path issues. The problem was resolved by correcting file permissions and using the correct private key location.

### Challenge 2: Nginx Configuration

During SSL deployment, Nginx generated configuration errors related to server name hash limits. The issue was resolved by modifying the Nginx configuration and validating it using:

```bash
sudo nginx -t
```

### Challenge 3: DNS and HTTPS Configuration

Additional troubleshooting was required to ensure DNS records, SSL certificates, and Nginx configurations were correctly aligned.

---

## Conclusion

This project successfully demonstrated the deployment and management of a cloud-hosted web server using Microsoft Azure. The website was hosted on an Ubuntu virtual machine, served using Nginx, secured using SSL/TLS certificates, and monitored using a custom Bash script. The project provided practical experience with cloud infrastructure, Linux server administration, networking, security, and web hosting technologies.


---

# References

1. Microsoft Azure Documentation. Azure Virtual Machines. Available at: https://learn.microsoft.com/azure/virtual-machines/

2. Nginx Documentation. Available at: https://nginx.org/en/docs/

3. Certbot Documentation. Available at: https://certbot.eff.org/

4. Ubuntu Server Documentation. Available at: https://ubuntu.com/server/docs

5. GitHub Documentation. Available at: https://docs.github.com/

6. Let's Encrypt Documentation. Available at: https://letsencrypt.org/docs/

7. OpenSSH Documentation. Available at: https://www.openssh.com/manual.html

```bash
ssh -i <private-key-file-path> sankaire@20.70.155.162
