# Projekt "OpenAPM"
![alt text](/grafana_bild.jpeg)

# AWS EC2 Instance with Grafana and Prometheus using Terraform and Docker 

> #### In this tutorial, we will create an AWS EC2 Instance monitor the AWS EC2 instances 
> #### using Prometheus and visualize the dashboard using Grafana.

## Agenda
[Step 1:](#download) Download Terraform on Ubuntu </br>
[Step 2:](#repository) Clone Repository </br>
[Step 3: Configure Terraform](#configure)</br>
[Step 4: Adapt the default parameters](#adapt)</br>
[Step 5: Create EC2-Instance with Terraform](#CreateEC2-Instance)</br>
[Step 6: Your Instance is online](#Instance_is_online)</br>
[Step 7: Troubleshooting](#Troubleshooting)</br>

## Prerequisite:
#### Example with free use AWS EC2-Instance:</br>
• Amazon Machine: Ubuntu Server 20.04 </br>
• Amazon Machine Images: ami-0a49b025fffbbdac6 </br>
• Region: Frankfurt (eu-central-1) </br>
• AWS Instance type: t2.micro </br>
• Ports: 3000, 9090, 22, 9100 </br>

> Port 9090 — Prometheus Server </br>
> Port 9100 — Prometheus Node Exporter </br>
> Port 3000 — Grafana </br>
> Port 22 — SSH </br>

## Step 1: Download Terraform on Ubuntu
***
1. Choose your IDE and create a new Project
Possible IDE: Eclipse, IntelliJ IDEA, PyCharm, Visual Studio Code etc. </br>
2. Install Terraform </br>
(Newest Version of Terraform: https://www.terraform.io/downloads)</br>
```
$ sudo apt-get install terraform
```
3. Check version - Is it properly installed?
```
$ terraform -v 
```
4. Check PATH of Terraform 
```
$ which terraform which terraform 
```

## Step 2: Clone Repository
***
```
$ curl https://github.com/AnnaSokol/OpenAPM__FIW_WS21_22.git
```

## Step 3: Configure Terraform
***
#### Add your AWS „Access Key ID“ and „Secret Access key“ in the le main.tf 
```
$ cd OpenAPM__FIW_WS21_22/main.tf
```
#### To get your access key ID and secret access key ppen the Security credentials tab on aws.com , and then choose Create access key. To see the new access key, choose Show. Your credentials resemble the following:

## Step 4: Adapt the default parameters 
***
```
$ cd OpenAPM__FIW_WS21_22/variables.tf
```
## Step 5: Create EC2-Instance with Terraform
***
```
$ terraform init 
$ terraform plan 
$ terraform apply 
```

## Step 6: Your Instance is online 
***
Check your Instance online: 

## Step 7: Troubleshooting
***
Solve - SignatureDoesNotMatch Error in AWS CLI </br>

#### There are 4 main reasons the SignatureDoesNotMatch occurs in AWS CLI: </br>
1. Your secret access key or access key id are incorrect </br>
2. Your auto-generated secret access key contains special characters (e.g. % , /, or + characters) that
cause the error, try to create a new key pair </br>
3. You are in a virtual machine and there is a discrepancy between the host's OS time and the guest's
OS time </br>
4. You reached the maximum capacity of your region contingent which must be explicitly enabled
and free. Change either your region or expand your contingent.