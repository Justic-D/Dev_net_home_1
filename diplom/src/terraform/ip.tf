output "node01_proxy_public" {
  value = yandex_compute_instance.node01.network_interface.0.nat_ip_address
}

output "node01_proxy_private" {
  value = yandex_compute_instance.node01.network_interface.0.ip_address
}

output "node02_db01_private" {
  value = yandex_compute_instance.node02.network_interface.0.ip_address
}

output "node03_db02_private" {
  value = yandex_compute_instance.node03.network_interface.0.ip_address
}


output "node04_app_private" {
  value = yandex_compute_instance.node04.network_interface.0.ip_address
}

output "node05_gitlab_private" {
  value = yandex_compute_instance.node05.network_interface.0.ip_address
}

output "node06_runner_private" {
  value = yandex_compute_instance.node06.network_interface.0.ip_address
}

output "node07_monitoring_private" {
  value = yandex_compute_instance.node07.network_interface.0.ip_address
}
