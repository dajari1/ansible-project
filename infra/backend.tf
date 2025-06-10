terraform {
  backend "s3" {
    bucket = "ansible-bucket-15346"
    region = "us-east-1"
    key    = "ansible-controller-backend/terraform.tfstate"
  }
}