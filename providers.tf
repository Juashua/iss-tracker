terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  alias  = "account_a"
  region = var.region
}

provider "aws" {
  alias  = "account_b"
  region = var.region
  assume_role {
    role_arn = "arn:aws:iam::994084282732:role/OrganizationAccountAccessRole"
  }
}