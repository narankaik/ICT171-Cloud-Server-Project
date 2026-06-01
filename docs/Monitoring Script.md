# Monitoring Script

## Objective

Create a simple Bash script to check whether the Nginx web server is running.

## Script Location

```bash
scripts/healthcheck.sh
```

## Script Code

```bash
#!/bin/bash

echo "Checking Nginx web server status..."

if systemctl is-active --quiet nginx
then
    echo "Nginx is running successfully."
else
    echo "Nginx is not running."
fi

echo "Health check completed."
```

## Purpose of the Script

This script checks the current status of the Nginx web server. If Nginx is active, it confirms that the website service is running. If Nginx is not active, the script reports that the web server is not running. This is useful for basic server monitoring and troubleshooting.

## Make Script Executable

```bash
chmod +x scripts/healthcheck.sh
```

## Run Script

```bash
./scripts/healthcheck.sh
```

## Expected Output

```text
Checking Nginx web server status...
Nginx is running successfully.
Health check completed.
```
