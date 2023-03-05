terraform {
    required_providers {
        aws ={
            source = "hashicorp/aws"
            version = "~>4.0"
        }
    }
}

provider "aws" {
    region = var.region
}

# store the state file in S3 bucket
terraform {
    backend "s3" {
    bucket = "bucket-mariam"
    key    = "terraform.tfstate"
    region = "eu-north-1"
  }
}