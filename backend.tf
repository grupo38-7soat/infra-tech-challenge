terraform {
  backend "s3" {
    bucket = "infra-tech-challenge-backend-tf"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}