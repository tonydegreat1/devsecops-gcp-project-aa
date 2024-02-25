#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install nginx -y 
sudo systemctl enable nginx
sudo systemctl start nginx
git clone https://git.toptal.com/screening-ops/Anthony-ahamefule.git
cd /Anthony-ahamefule
pip install requirements.txt
echo "*/10 * * * * $SHELL remediation.sh" | crontab -