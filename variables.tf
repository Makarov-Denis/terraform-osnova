variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vms_ssh_root_key" {
  type        = string
  description = "ssh-keygen -t ed25519"
}

variable "vms_resources" {
  type = map(map(any))
  default = {
    vm_web = {
      core_fraction = 5
      cores         = 2
      memory        = 1
    }
    vm_db = {
      core_fraction = 20
      cores         = 2
      memory        = 2
    }
  }
  description = "Resource configurations for VMs"
}

variable "vms_metadata" {
  type = map(string)
  default = {
    "serial-port-enable" = "1"
    "ssh-keys"           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB+Un49iURjEWYb6tLytVstJT5/xZ9iTOGvo8QwLcU8a admden@admden-VirtualBox"
  }
  description = "Metadata for VMs"
}
