# Website Deployment

## Objective

Deploy the personal portfolio website to the Nginx web server.

## Website Directory

Nginx serves website files from:

```bash
/var/www/html
```

## Deployment Commands

```bash
sudo cp index.html /var/www/html/
```

If using a full website folder:

```bash
sudo cp -r website/* /var/www/html/
```

## File Permission Check

```bash
ls -l /var/www/html
```

## Verification

The website was tested by opening the server DNS name in a browser:

```text
http://clintonportfolio2026.australiaeast.cloudapp.azure.com
```

The portfolio homepage loaded successfully.
