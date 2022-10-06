terraform {
  backend "s3" {
    bucket = "190281595713-terraform-state"
    key    = "development/webapp.tfstate"
    region = "us-east-1"
  }
}
