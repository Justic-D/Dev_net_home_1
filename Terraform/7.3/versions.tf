terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.27.0"
    }
  }


  backend "s3" {
    bucket = "wiktormys"
    key    = "terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "terraform_state"
  }
}