terraform {
 required_providers {
  aws = {
   source  = "hashicorp/aws"
   version = "~>5.0"
  }
 }
}

provider "aws" {
 region = "us-east-1"
}

module "ci_bucket" {
 source      = "./modules/s3_bucket"
 bucket_name = "silly-day8-ci"
 purpose     = "CI/CD Terraform demo"
}
