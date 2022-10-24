# Network
resource "yandex_vpc_network" "default" {
  name = "net"
}

resource "yandex_vpc_subnet" "subnet" {
  count          = 3
  name           = "${var.zones[count.index]}-subnet"
  zone           = var.zones[count.index]
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = [var.cidr[count.index]]
}