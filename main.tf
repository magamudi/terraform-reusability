module "groups_renamed" {
  source = "./modules/droplet-lb"

  droplet_count = 3
  group_name    = "group1"
}

output "loadbalancer-ip" {
  value = module.groups_renamed.lb_ip
}
moved {
  from = module.groups
  to   = module.groups_renamed
}