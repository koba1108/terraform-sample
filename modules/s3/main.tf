terraform {
  required_version = ">= 1.4.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.61.0"
    }
  }
}

resource "aws_s3_bucket" "ykoba-terraform-import-bucket" {
  tags = {
    "tag-key" = "tag-value"
  }
}
