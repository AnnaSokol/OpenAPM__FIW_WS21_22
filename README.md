# Projekt "OpenAPM"
![alt text](/grafana_bild.jpeg)

# AWS EC2 Instance with Grafana and
# Prometheus using Terraform and Docker 

-> In this tutorial, we will create an AWS EC2 Instance monitor the AWS EC2 instances using
Prometheus and visualize the dashboard using Grafana.

# Agenda:
Step 1: Download Terraform on Ubuntu
Step 2: Clone Repository
Step 3: Con gure Terraform
Step 4: Adapt the default parameters
Step 5: Create EC2-Instance with Terraform
Step 6: Your Instance is online
Step 7: Troubleshooting
# Prerequisite:
Example with free use AWS EC2-Instance:
• Amazon Machine: Ubuntu Server 20.04
• Amazon Machine Images: ami-0a49b025fffbbdac6
• Region: Frankfurt (eu-central-1)
• AWS Instance type: t2.micro
• Ports: 3000, 9090, 22, 9100

Port 9090 — Prometheus Server
Port 9100 — Prometheus Node Exporter
Port 3000 — Grafana
Port 22 — SSH

## Step 1: Download Terraform on Ubuntu
1. Choose your IDE and create a new Project
Possible IDE: Eclipse, IntelliJ IDEA, PyCharm, Visual Studio Code etc.
2. Install Terraform
(Newest Version of Terraform: https://www.terraform.io/downloads)
$ sudo apt-get install terraform
3: Check version - Is it properly installed?
$ terraform -v
4: Check PATH of Terraform
$ which terraform which terraform

## Step 2: Clone Repository
$ curl https://github.com/AnnaSokol/OpenAPM__FIW_WS21_22.git

## Step 3: Con gure Terraform
-> Add your AWS „Access Key ID“ and „Secret Access key“ in the le main.tf
$ cd OpenAPM__FIW_WS21_22/main.tf
-> To get your access key ID and secret access key ppen the Security credentials tab on
aws.com , and then choose Create access key. To see the new access key, choose Show. Your
credentials resemble the following:

## Step 4: Adapt the default parameters
$ cd OpenAPM__FIW_WS21_22/variables.tf

## Step 5: Create EC2-Instance with Terraform
$ terraform init
$ terraform plan
$ terraform apply

## Step 6: Your Instance is online
Check your Instance online:

## Step 7: Troubleshooting
Solve - SignatureDoesNotMatch Error in AWS CLI

There are 4 main reasons the SignatureDoesNotMatch occurs in AWS CLI:
1. Your secret access key or access key id are incorrect
2. Your auto-generated secret access key contains special characters (e.g. % , /, or + characters) that
cause the error, try to create a new key pair
3. You are in a virtual machine and there is a discrepancy between the host's OS time and the guest's
OS time
4. You reached the maximum capacity of your region contingent which must be explicitly enabled
and free. Change either your region or expand your contingent.