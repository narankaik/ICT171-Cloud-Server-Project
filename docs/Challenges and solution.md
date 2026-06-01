# Challenges and Solutions

## Challenge 1: SSH Key Permission Issue

During the SSH setup, the private key file permissions were too open. This prevented SSH from accepting the key.

## Solution

The SSH key permissions were corrected before connecting to the server.

---

## Challenge 2: HTTP Port Not Accessible

The website was not accessible from the browser because port 80 was not initially open.

## Solution

An inbound rule was added in the Azure Network Security Group to allow HTTP traffic on port 80.

---

## Challenge 3: SSL/Nginx Configuration Error

During SSL deployment, Nginx reported a server name hash bucket size error.

## Solution

The Nginx configuration was adjusted and the certificate was installed again successfully.

---

## Challenge 4: Git Commits Not Pushed

Some commits were created locally but were not visible on GitHub.

## Solution

The repository was updated using:

```bash
git push
