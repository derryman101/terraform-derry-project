terraform {
  required_version = ">= 1.1.0"
  backend "s3" {
    bucket         = "derryterrapjt"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}