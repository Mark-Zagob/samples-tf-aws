terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  # Specify the version of the AWS provider
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"  # Specify the version of the local provider
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"  # Specify the version of the TLS provider
    }
  }

  required_version = ">= 1.0.0"
}



provider "aws" {
    region = var.aws_region
    #profile = var.aws_profile
}


terraform {
  backend "s3" {
    bucket         = "tf-backend-ci-cd"
    key            = "ci-cd/qa/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "tf-backend-ci-cd" # Optional: For state locking
  }
}
