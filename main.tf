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

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

module "ci_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "silly-day8-ci-${random_string.suffix.result}"
  purpose     = "CI/CD Terraform demo"
}
