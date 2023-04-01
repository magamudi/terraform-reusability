variable "group_counts" {
  type    = map
  default = {
    "group1" = 1
    "group2" = 3
  }
}

module "groups" {
  source   = "./modules/droplet-lb"
  for_each = var.group_counts

  droplet_count = each.value
  group_name    = each.key
}