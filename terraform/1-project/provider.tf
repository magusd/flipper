provider "aws" {
  region = "us-east-2"
  default_tags {
    tags = {
      Environment = "Test"
      Owner       = "vitor.lobs@gmail.com"
      Project     = "flipper"
    }
  }
}
