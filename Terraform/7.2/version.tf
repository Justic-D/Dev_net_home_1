terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.77.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.27.0"
    }
  }
}