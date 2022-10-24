terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "diplom-myshelov-netology"

    workspaces {
      name = "stage"
    }
  }
}

