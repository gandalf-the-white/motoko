
###################################################################################
## D E V
####################################################################################

module "dev" {
  source      = "./modules/dev"
  name        = "dev-server"
  prefix      = var.prefix # VLAN 200
  bridge      = var.bridge
  octet       = "145"
  nfs         = "146"
  vlan        = 200
  memory      = 4096
  nameserver  = var.nameserver
  target_node = var.target_node
  clone       = "freebsd-150-tmpl"
  size        = 30
  storage     = var.storage
  cloudinit   = var.cloudinit
  proxy       = var.proxy
  userctn     = var.userctn
  publkeyctn  = var.publkeyctn
  privkeyctn  = var.privkeyctn
  # depends_on  = [module.nfs]
}

###################################################################################
## N F S
####################################################################################

module "nfs" {
  source      = "./modules/nfs"
  name        = "nfs-server"
  prefix      = var.prefix # VLAN 200
  bridge      = var.bridge
  octet       = "146"
  vlan        = 200
  memory      = 2048
  nameserver  = var.nameserver
  target_node = var.target_node
  clone       = "freebsd-150-tmpl"
  size        = 100
  storage     = var.storage
  cloudinit   = var.cloudinit
  proxy       = var.proxy
  userctn     = var.userctn
  publkeyctn  = var.publkeyctn
  privkeyctn  = var.privkeyctn
}

####################################################################################
## O U T P U T
####################################################################################

output "dev_server_ip_address" {
  description = "Dev Server IP Address"
  value       = module.dev
}

output "nfs_server_ip_address" {
  description = "NFS Server IP Address"
  value       = module.nfs
}
