resource "digitalocean_droplet" "droplets" {
  count  = var.droplet_count
  image  = "ubuntu-20-04-x64"
  name   = "${var.group_name}-${count.index}"
  region = "fra1"
  size   = "s-1vcpu-1gb"
}