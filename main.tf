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
    region = "ap-southeast-2"
}

resource "aws_sqs_queue" "tf-sqs-sydney" {
  name = "tf-sqs-sydney"
  visibility_timeout_seconds = "30"
  delay_seconds = "0"
}

resource "aws_sqs_queue_policy" "tf-sqs-sydney" {
  queue_url = aws_sqs_queue.tf-sqs-sydney.id
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = "*",
        Action   = "sqs:*",
        Resource = "${aws_sqs_queue.tf-sqs-sydney.arn}"
      }
    ]
  })
  depends_on = [ aws_sqs_queue.tf-sqs-sydney ]
}
