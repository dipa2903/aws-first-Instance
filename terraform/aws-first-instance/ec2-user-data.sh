user_data  = <<EOF 
#!/bin/bash
sudo apt update
sudo apt install -y nginx1
sudo systemctl start nginx
sudo systemctl enable nginx
cd /var/www/html/index.html
EOF
