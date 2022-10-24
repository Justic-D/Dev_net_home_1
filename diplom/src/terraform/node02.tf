resource "yandex_compute_instance" "node02" {
  name                      = "node02"
  zone                      = var.zones[1]
  hostname                  = "db01.myshelov.site"
  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.work-instans}"
      name        = "root-node02"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet[1].id}"
    nat        = true
  }

  metadata = {
#     ssh-keys = "user:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFOTMyr3L0PLYK89MzMWlLmIJioF1ql7ysknjqKoce6c user@DESKTOP-KCS3IDD"
    user-data = "${file("meta.txt")}"
#    serial-port-enable = 1
  }
}