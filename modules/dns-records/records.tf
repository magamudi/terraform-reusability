resource "digitalocean_domain" "domain" {
  name = var.domain_name
}

resource "digitalocean_record" "domain_A" {
  domain = digitalocean_domain.domain.name
  type   = "A"
  name   = "@"
  value  = var.ipv4_address
}

resource "digitalocean_record" "domain_CNAME" {
  domain = digitalocean_domain.domain.name
  type   = "CNAME"
  name   = "www"
  value  = "@"
}
