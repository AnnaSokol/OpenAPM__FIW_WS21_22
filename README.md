# Projekt "OpenAPM"
![alt text](/grafana_bild.jpeg)

# AWS EC2 Instance with Grafana and Prometheus using Terraform and Docker 

#### -> In this tutorial, we will create an AWS EC2 Instance monitor the AWS EC2 instances using Prometheus and visualize the dashboard using Grafana.

## Agenda
1. [Step 1: Download Terraform on Ubuntu](#download)
2. [Step 2: Clone Repository](#repository)
3. [Step 3: Configure Terraform](#configure)
4. [Step 4: Adapt the default parameters](#adapt)
5. [Step 5: Create EC2-Instance with Terraform](#CreateEC2-Instance)
6. [Step 6: Your Instance is online](#Instance_is_online)
7. [Step 7: Troubleshooting](#Troubleshooting)

# Prerequisite:
#### Example with free use AWS EC2-Instance:</br>
• Amazon Machine: Ubuntu Server 20.04 </br>
• Amazon Machine Images: ami-0a49b025fffbbdac6 </br>
• Region: Frankfurt (eu-central-1) </br>
• AWS Instance type: t2.micro </br>
• Ports: 3000, 9090, 22, 9100 </br>

Port 9090 — Prometheus Server </br>
Port 9100 — Prometheus Node Exporter </br>
Port 3000 — Grafana </br>
Port 22 — SSH </br>

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
#### -> Add your AWS „Access Key ID“ and „Secret Access key“ in the le main.tf </br>
```
$ cd OpenAPM__FIW_WS21_22/main.tf
```
#### -> To get your access key ID and secret access key ppen the Security credentials tab on aws.com , and then choose Create access key. To see the new access key, choose Show. Your credentials resemble the following:

## Step 4: Adapt the default parameters </br>
***
```
$ cd OpenAPM__FIW_WS21_22/variables.tf
```
## Step 5: Create EC2-Instance with Terraform
***
```
$ terraform init </br>
$ terraform plan </br>
$ terraform apply </br>
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

## Table of Contents
1. [General Info](#general-info)
2. [Technologies](#technologies)
3. [Installation](#installation)
4. [Collaboration](#collaboration)
5. [FAQs](#faqs)

### General Info
***
Write down the general informations of your project. It is worth to always put a project status in the Readme file. This is where you can add it. 
### Screenshot
![Image text](https://www.united-internet.de/fileadmin/user_upload/Brands/Downloads/Logo_IONOS_by.jpg)

## Technologies
***
A list of technologies used within the project:
* [Technologie name](https://example.com): Version 12.3 
* [Technologie name](https://example.com): Version 2.34
* [Library name](https://example.com): Version 1234

## Installation
***
A little intro about the installation. 
```
$ git clone https://example.com
$ cd ../path/to/the/file
$ npm install
$ npm start
```
Side information: To use the application in a special environment use ```lorem ipsum``` to start

## Collaboration
***
Give instructions on how to collaborate with your project.
> Maybe you want to write a quote in this part. 
> It should go over several rows?
> This is how you do it.

## FAQs
***
A list of frequently asked questions
1. **This is a question in bold**
Answer of the first question with _italic words_. 
2. __Second question in bold__ 
To answer this question we use an unordered list:
* First point
* Second Point
* Third point
3. **Third question in bold**
Answer of the third question with *italic words*.
4. **Fourth question in bold**

| Headline 1 in the tablehead | Headline 2 in the tablehead | Headline 3 in the tablehead |
|:--------------|:-------------:|--------------:|
| text-align left | text-align center | text-align right |