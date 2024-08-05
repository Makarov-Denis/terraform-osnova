output "vm_instances_info" {
  value = {
    vm_web = {
      instance_name = yandex_compute_instance.platform.name
      external_ip   = yandex_compute_instance.platform.network_interface.0.nat_ip_address
      fqdn          = yandex_compute_instance.platform.fqdn
    }
    vm_db = {
      instance_name = yandex_compute_instance.platform_db.name
      external_ip   = yandex_compute_instance.platform_db.network_interface.0.nat_ip_address
      fqdn          = yandex_compute_instance.platform_db.fqdn
    }
  }
  description = "Information about VM instances: name, external IP, and FQDN."
}
