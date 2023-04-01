module "droplets" {
  source   = "../../modules/droplet-lb"

  droplet_count = 2
  group_name    = "dev"
}

module "dns" {
  source   = "../../modules/dns-records"

  domain_name   = "truscrow.com"
  ipv4_address  = module.droplets.lb_ip
}

