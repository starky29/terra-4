terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=0.13"
}
#создаем облачную сеть
resource "yandex_vpc_network" "net" {
  name = var.env_name
}

#создаем подсеть
resource "yandex_vpc_subnet" "subnet" {
  name           = "${var.env_name}-subnet"
  network_id     = yandex_vpc_network.net.id
  v4_cidr_blocks = var.v4_cidr_block
  zone           = var.zone
}

