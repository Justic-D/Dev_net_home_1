variable "nat-instans" {
  default = "fd8v7ru46kt3s4o5f0uo"
}

variable "work-instans" {
  default = "fd8hvlnfb66dgavf0e1a"
}

variable "zones" {
  type = list(string)
}

variable "cidr" {
  type = list(string)
}

variable "node01_ip" {
}

variable "cloudflare_zone_id" {
}

variable "subdomains" {
  type = list(string)
}

variable "name" {
  type = list(string)
  description = "List domains"
}

variable "hostname" {
  type = list(string)
  description = "List hostnames"
}