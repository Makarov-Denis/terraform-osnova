variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Name of the VM"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Platform ID for the VM"
}

variable "vm_web_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Zone where the VM will be created"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 5
  description = "Core fraction for the VM"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "Number of cores for the VM"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "Memory size (in GB) for the VM"
}

variable "vm_web_image_id" {
  type        = string
  default     = "fd8hjvoj7ln4vjtiufn1"
  description = "Image ID for the boot disk"
}

variable "vm_web_disk_type" {
  type        = string
  default     = "network-hdd"
  description = "Type of the boot disk"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "Enable NAT for the VM"
}

variable "vm_web_serial_port_enable" {
  type        = string
  default     = "1"
  description = "Enable serial port for the VM"
}

variable "vm_web_ssh_keys" {
  type        = string
  default     = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB+Un49iURjEWYb6tLytVstJT5/xZ9iTOGvo8QwLcU8a admden@admden-VirtualBox"
  description = "SSH keys for the VM"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "Enable preemptible flag for the VM"
}

# Переменные для второй ВМ
variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Name of the VM"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Platform ID for the VM"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Zone where the VM will be created"
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 20
  description = "Core fraction for the VM"
}

variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "Number of cores for the VM"
}

variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "Memory size (in GB) for the VM"
}

variable "vm_db_image_id" {
  type        = string
  default     = "fd8hjvoj7ln4vjtiufn1"
  description = "Image ID for the boot disk"
}

variable "vm_db_disk_type" {
  type        = string
  default     = "network-hdd"
  description = "Type of the boot disk"
}

variable "vm_db_nat" {
  type        = bool
  default     = true
  description = "Enable NAT for the VM"
}

variable "vm_db_serial_port_enable" {
  type        = string
  default     = "1"
  description = "Enable serial port for the VM"
}

variable "vm_db_ssh_keys" {
  type        = string
  default     = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB+Un49iURjEWYb6tLytVstJT5/xZ9iTOGvo8QwLcU8a admden@admden-VirtualBox"
  description = "SSH keys for the VM"
}

variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "Enable preemptible flag for the VM"
}
