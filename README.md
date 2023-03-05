# two-tier-application-using-terraform
## Overview
Create EC2 and RDS Instance Inside a Custom VPC on AWS using Terraform
<div align="center">
<img src="https://user-images.githubusercontent.com/47721226/222971471-8fee3398-2897-4dc3-a86e-edb92795507e.png">
</div>

---

## Prerequisite
* [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) installed and configured
* [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
---

## Requirments
* EC2 instance should be accessible anywhere on the internet via HTTP and HTTPS
* RDS should be on a private subnet and inaccessible via the internet
* Only the EC2 instance should be able to communicate with RDS
* Use terraform state file in S3 bucket
---
## Steps

### 1.Configure AWS Provider 
* Configure AWS CLI to work using your AWS account
* Specify aws provider source `hashicorp/aws` and version in `provider.tf` file
* configure used region `provider.tf` file
* Store terraform state `terraform.tfstate` file on S3 bucket


### 2.Create Custom VPC
* Create VPC using AWS Console, find [documentation here](https://docs.aws.amazon.com/vpc/latest/userguide/working-with-vpcs.html#create-vpc-vpc-only)


### 3.Create Network Module
**you can find [network module](https://github.com/MariamGad/terraform-network-module) here**, this module is responsible for:
* Creating public subnet for EC2 instance.
* Creating two private subnets for RDS instance.
* Creating Internet Gateway to give EC2 instance an access to the Internet.
* Creating route table.
* Attaching the Internet Gateway to the public subnet.
* Attaching the route table to the public subnet.
* Creating subnet group for RDS instance.


### 4.Create Application Module 
**you can find [application module](https://github.com/MariamGad/terraform-application-module) here**, this module is responsible for:
* Creating EC2 instance using `t2.micro` instance type with `Amazon Linux` image
* Attaching EC2 to a public subnet 
* Attaching security group that allows HTTP and HTTPS traffic to EC2 


### 5.Create database Module
**you can find [database module](https://github.com/MariamGad/terraform-database-module) here**, this module is responsible for:
* Creating RDS instance using `db.t2.micro` instance class and `mysql` engine
* Attaching RDS to two private subnets
* Attaching security group that only allow access for the application to RDS through `3306 port`


### 6.Adding dependencies
* in `main.tf` file add module sections for all created modules.
* Add `source` attribute to refer to path of correct module , which is in our case a `github repo URL`.
* Add all dependencies and variables used in that module.

---
## Verification
* install all required files of the cloud provider and used modules `terraform init`
* Check and validate all configurations `terraform plan`
* Create all resources `terraform apply`
