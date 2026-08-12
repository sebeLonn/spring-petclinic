terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "petclinic-terraform-state-597765856364"
    key            = "infra/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "petclinic-terraform-locks"
    encrypt        = true
    profile        = "dev-mfa"
  }
}

provider "aws" {
  region  = "eu-west-1"
  profile = "dev-mfa"
}
