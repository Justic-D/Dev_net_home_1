# Provider
terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "yandex" {
  #service_account_key_file = "key.json"
  zone = var.zones[1]
}

provider "cloudflare" {
  #api_token = "HYCvi2ZDlifln8u-3q5EY-or6L2lMpujMU_Fnqm1dddd"
  #email = "myshelov@gmail.com"
}