# Common used commands
sudo docker compose up --build -d
sudo docker logs
sudo docker run -d -p port:port --name cont-name image
sudo docker build -t image-name:latest .

cd nginx-proxy/
sudo docker compose up -d nginx
sudo docker compose run certbot
sudo docker compose restart nginx

sudo tail -f /var/log/nginx/access.log # Check logs in real-timey
sudo lsof -i :80 # Check post availability
sudo certbot --nginx # Use NGINX plugin for certbot (recommended only if NGINX is installed on host)


# Generate ssl certificate for domains
sudo certbot certonly --standalone -d back.aribadevops.site
sudo certbot certonly --standalone -d ats.aribadevops.site
sudo certbot certonly --standalone -d front.aribadevops.site

# Create folder on EC2
mkdir -p ~/nginx/certs/ats.aribadevops.site
mkdir -p ~/nginx/certs/front.aribadevops.site
mkdir -p ~/nginx/certs/back.aribadevops.site

# Copy SSL certs for frontEnd
sudo cp /etc/letsencrypt/live/front.aribadevops.site/fullchain.pem ~/nginx/certs/front.aribadevops.site/
sudo cp /etc/letsencrypt/live/front.aribadevops.site/privkey.pem ~/nginx/certs/front.aribadevops.site/
sudo chown $USER:$USER ~/nginx/certs/front.aribadevops.site/*

## For back.aribadevops.site
mkdir -p ~/nginx/certs/back.aribadevops.site
sudo cp /etc/letsencrypt/live/back.aribadevops.site/fullchain.pem ~/nginx/certs/back.aribadevops.site/
sudo cp /etc/letsencrypt/live/back.aribadevops.site/privkey.pem ~/nginx/certs/back.aribadevops.site/
sudo chown $USER:$USER ~/nginx/certs/back.aribadevops.site/*

# For ats.aribadevops.site
mkdir -p ~/nginx/certs/ats.aribadevops.site
sudo cp /etc/letsencrypt/live/ats.aribadevops.site/fullchain.pem ~/nginx/certs/ats.aribadevops.site/
sudo cp /etc/letsencrypt/live/ats.aribadevops.site/privkey.pem ~/nginx/certs/ats.aribadevops.site/
sudo chown $USER:$USER ~/nginx/certs/ats.aribadevops.site/*


