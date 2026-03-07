
variable "userctn" { default = "spike" }
variable "publkeyctn" {}
variable "privkeyctn" {}
variable "token" {}
variable "token_id" {}
variable "fqdn_pmox" {}
variable "bridge" { default = "vmbr3" }

variable "proxy" { default = "" }
variable "nameserver" { default = "192.168.68.1" }

variable "cloudinit" { default = "local" }
variable "target_node" { default = "proxmox" }
variable "storage" { default = "local-lvm" }

variable "prefix" { default = "192.188.200" }
