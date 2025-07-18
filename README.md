
# 🚀 Full Stack Dockerized Deployment with NGINX Reverse Proxy and SSL

This project demonstrates a **production-ready deployment** of a full stack application using **Docker Compose**, **NGINX** as a reverse proxy, **Let's Encrypt SSL**, and **domain-based routing** for individual services.

---

## 📦 Project Structure

```
.
├── backend/              # Spring Boot application
├── frontend/             # React application (Vite-based)
├── api/                  # Python FastAPI service
├── nginx/
│   ├── certs/            # SSL certificates for domains
│   └── conf.d/
│       └── default.conf  # NGINX config file
├── docker-compose.yml    # Docker Compose configuration
└── README.md             # This file
```

---

## 🌐 Domain Setup

Each service is accessible via a unique subdomain over HTTPS:

| Service     | Domain                        | Port     |
|-------------|-------------------------------|----------|
| Frontend    | https://front.aribadevops.site | React App (Vite) |
| Backend     | https://back.aribadevops.site  | Spring Boot |
| API         | https://api.aribadevops.site   | Python FastAPI |

---

## ⚙️ Technologies Used

- **Docker & Docker Compose**
- **NGINX** (reverse proxy)
- **Let's Encrypt Certbot** (HTTPS SSL setup)
- **React + Vite** (Frontend)
- **Spring Boot** (Backend)
- **Python FastAPI** (API)
- **Jenkins (CI/CD)** hosted on a separate EC2 instance
- **AWS EC2** for hosting
- **Route53** for domain management

---

## 🛠️ How It Works

- NGINX routes incoming HTTPS traffic based on subdomain
- Each service runs in its own isolated container
- SSL certificates issued using Let's Encrypt and mounted via volume
- Domains are configured via AWS Route 53
- Jenkins triggers the CI/CD pipeline on code push to redeploy services

---

## 🚀 How to Run Locally (Development)

```bash
git clone https://github.com/<your-username>/<repo-name>.git
cd <repo-name>
docker-compose up --build
```

Make sure:
- Ports 80 and 443 are free
- You’ve mapped your domains to your server's public IP
- Certificates are present under `nginx/certs/<domain>`

---

## 🔒 SSL Certificate Renewal

Certificates are set to auto-renew via Certbot's systemd timer.

To renew manually:

```bash
sudo certbot renew --dry-run
```

---

## 📸 Screenshots

Add screenshots of:
- React app running on `front.aribadevops.site`
- Backend/API response
- NGINX log/output
- HTTPS certificate in browser

---

## 📄 License

This project is for demonstration and educational purposes only.

---

## ✅ Status

🟢 **Project Completed**
