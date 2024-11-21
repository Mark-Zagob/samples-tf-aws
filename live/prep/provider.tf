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
  cloud {
    organization = "Mark_Zagob"

    workspaces {
      name = "sample-tf-aws"
    }
  }

}