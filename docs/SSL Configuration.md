# SSL/TLS Configuration

## Objective

Secure the portfolio website using HTTPS with a Let's Encrypt SSL/TLS certificate.

## Certbot Installation

```bash
sudo apt update
sudo apt install certbot python3-certbot-nginx -y
```

## Certificate Command

```bash
sudo certbot --nginx -d clintonportfolio2026.australiaeast.cloudapp.azure.com
```

## Verification

The website was tested using HTTPS:

```text
https://clintonportfolio2026.australiaeast.cloudapp.azure.com
```

The browser displayed the secure padlock icon, confirming that SSL/TLS was working.

## Renewal Check

```bash
sudo certbot renew --dry-run
```
