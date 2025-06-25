# Terraform-Ansible-Docker Jenkins CI/CD Automation

This project automates the provisioning and setup of a Jenkins-based CI/CD environment on AWS EC2 using **Terraform** for infrastructure, **Ansible** for configuration, and **Docker** for isolation.

## 🚀 Components Used

- **Terraform**: Provisions an Ubuntu EC2 instance and security group.
- **Ansible**: Installs Docker and Jenkins in a container, and configures necessary permissions.
- **Docker**: Runs Jenkins in an isolated container with persistent volume.

---

## 📁 Directory Structure

```
Terraform-Ansible-Docker-Full-Automation/
├── Terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
└── Ansible/
    ├── inventory.ini
    └── playbook.yml
```

---

## ✅ Setup Steps

### 1. Terraform: Provision EC2

```bash
cd Terraform
terraform init
terraform apply
```

After provisioning, note the public IP from the output.

### 2. Ansible: Configure Server

1. Update `Ansible/inventory.ini` with your instance IP and private key path.

```ini
[web]
<your-ec2-ip> ansible_user=ubuntu ansible_ssh_private_key_file=~/ZethLabKey.pem
```

2. Run the playbook:

```bash
cd ../Ansible
ansible-playbook -i inventory.ini playbook.yml
```

---

## 🔐 Access Jenkins

Visit: `http://<your-ec2-ip>:8080`

To get the admin password:

```bash
sudo docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

---

## 🛡 Security Notes

- Ports `22`, `8080`, and `50000` are open publicly (adjust for production).
- SSH key permissions must be strict (e.g. `chmod 400` in WSL).

---
