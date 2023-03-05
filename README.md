# two-tier-application-using-terraform
## Overview
Create EC2 and RDS Instance Inside a Custom VPC on AWS using Terraform
<div align="center">
<img src="https://user-images.githubusercontent.com/47721226/222971471-8fee3398-2897-4dc3-a86e-edb92795507e.png">
</div>

## Prerequisite
* [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) installed and configured
* [Terraform](https://developer.hashicorp.com/terraform/downloads) installed

## Requirments
* EC2 instance should be accessible anywhere on the internet via HTTP and HTTPS
* RDS should be on a private subnet and inaccessible via the internet
* Only the EC2 instance should be able to communicate with RDS

## Steps
### Create Custom VPC
Create VPC using AWS Console, find [documentation here](https://docs.aws.amazon.com/vpc/latest/userguide/working-with-vpcs.html#create-vpc-vpc-only)

---

### Create Network Module
**you can find [network module](https://github.com/MariamGad/terraform-network-module) here**\
this module is responsible for:
* Creating public subnet for EC2 instance.
* Creating two private subnets for RDS instance.
* Creating Internet Gateway to give EC2 instance an access to the Internet.
* Creating route table.
* Attaching the Internet Gateway to the public subnet.
* Attaching the route table to the public subnet.
* Create subnet group for RDS instance.
---

### Create Application Module 
**you can find [application module](https://github.com/MariamGad/terraform-application-module) here**\
this module is responsible for:
* Creating EC2 instance using `t2.micro` instance type with `Amazon Linux` image
* Attaching EC2 to a public subnet 
* Attaching security group that allows HTTP and HTTPS traffic to EC2 

