resource "yandex_compute_instance" "node01" {
  name                      = "node01"
  zone                      = var.zones[0]
  hostname                  = "myshelov.site"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.nat-instans}"
      name        = "root-node01"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet[0].id}"
    nat        = true
    ip_address = var.node01_ip
    ipv6       = false
  }

  metadata = {
    user-data          = "${file("meta.txt")}"
#    serial-port-enable = 1
  }
}