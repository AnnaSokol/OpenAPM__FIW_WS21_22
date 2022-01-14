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
Aktuelle Version von Terraform und Dokumentation sind hier: https://www.terraform.io/downloads </br>
![alt text](/ter_bild.jpeg) </br>


Schritt 1: Register HashiCorp GPG keys </br>
$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - </br>

Schritt 2: Add HashiCorp package repository </br>
$ sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" </br>

Schritt 3: Update "Ubuntu" packages list </br>
$ sudo apt-get update </br>

Schritt 3: Install Terraform on Ubuntu </br> 
$ sudo apt-get install terraform </br>

Schritt 4: Überprüfen Sie die Version von Terraform </br>
$ terraform -v </br>

Schritt 5: Wo befindet sich Terraform </br>
$ which terraform </br>