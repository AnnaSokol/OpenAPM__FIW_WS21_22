# Projekt "OpenAPM"
![alt text](/grafana_bild.jpeg)

# Erstellen Grafana und Prometheus auf AWS mit Terraform und Docker 

AWS EC2-Instance:
- Amazon Machine: Ubuntu Server 20.04 
- Amazon Machine Images: ami-0a49b025fffbbdac6
- Region: Frankfurt (eu-central-1) 
- AWS Instance type: t3.micro
- Ports: 3000, 9090, 22, 

# Download Terraform für UBUNTU
Aktuelle Version von Terraform und Dokumentation sind hier: https://www.terraform.io/downloads 
![alt text](/terraform_bild.jpeg)


Schritt 1: Register HashiCorp GPG keys
$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

Schritt 2: Add HashiCorp package repository
$ sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

Schritt 3: Update "Ubuntu" packages list
$ sudo apt-get update

Schritt 3: Install Terraform on Ubuntu
$ sudo apt-get install terraform

Schritt 4: Überprüfen Sie die Version von Terraform
$ terraform -v

Schritt 5: Wo befindet sich Terraform
$ which terraform