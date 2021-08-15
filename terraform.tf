terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70.0"
    }
  }
}

provider "aws" {
    region = var.aws_region
    access_key = MY_ACCESS_KEY
    secret_key = MY_SECRET_KEY 
}

module "website" {
    source = "./.deploy/terraform/static-site"
    domain_name = var.domain_name
}