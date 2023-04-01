output "A_fqdn" {
  value = digitalocean_record.domain_A.fqdn
}

output "CNAME_fqdn" {
  value = digitalocean_record.domain_CNAME.fqdn
}
