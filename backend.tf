terraform {
  backend "s3" {
    bucket         = "demo-terraform-backend"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "demo-terraform-backend"
  }
}
