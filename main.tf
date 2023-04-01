module "groups" {
  source = "./modules/droplet-lb"

  count  = 3

  droplet_count = 3
  group_name    = "group1-${count.index}"
}