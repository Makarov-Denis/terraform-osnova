resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

resource "yandex_compute_instance" "platform" {
  #name        = var.vm_web_name
  name        = local.vm_web_instance_name
  platform_id = var.vm_web_platform_id
  zone        = var.vm_web_zone

  resources {
    core_fraction = var.vm_web_core_fraction
    cores         = var.vm_web_cores
    memory        = var.vm_web_memory
  }

  boot_disk {
    initialize_params {
      image_id = var.vm_web_image_id
      type     = var.vm_web_disk_type
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = var.vm_web_nat
  }

  metadata = {
    "serial-port-enable" = var.vm_web_serial_port_enable
    "ssh-keys"           = var.vm_web_ssh_keys
  }

  scheduling_policy {
    preemptible = var.vm_web_preemptible
  }
}

resource "yandex_compute_instance" "platform_db" {
  #name        = var.vm_db_name
  name        = local.vm_db_instance_name
  platform_id = var.vm_db_platform_id
  zone        = var.vm_db_zone

  resources {
    core_fraction = var.vms_resources.vm_db.core_fraction
    cores         = var.vms_resources.vm_db.cores
    memory        = var.vms_resources.vm_db.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.vm_db_image_id
      type     = var.vm_db_disk_type
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = var.vm_db_nat
  }

  metadata = var.vms_metadata

  scheduling_policy {
    preemptible = var.vm_db_preemptible
  }
}
output "external_ip_address" {
  value = yandex_compute_instance.platform.network_interface.0.nat_ip_address
}

output "instance_id" {
  value = yandex_compute_instance.platform.id
}
