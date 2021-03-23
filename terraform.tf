terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70.0"
    }
  }
}

variable "aws_region" {
  type = string
}

variable "domain_name" {
  type = string
}

provider "aws" {
  region = var.aws_region
}

module "website" {
  source = "./.deploy/terraform/static-site"
  domain_name = var.domain_name
}