terraform {
  backend "s3" {
    bucket         = "terraform-state-16-02-2025"
    key            = "infraestructura/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}
