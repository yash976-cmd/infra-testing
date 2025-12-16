terraform {
  backend "s3" {
    bucket         = "REPLACE_WITH_YOUR_BUCKET"
    key            = "two-tier/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}