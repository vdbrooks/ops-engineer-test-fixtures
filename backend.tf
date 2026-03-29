terraform {
  backend "s3" {
    bucket         = "acme-terraform-state"
    key            = "prod/infra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
