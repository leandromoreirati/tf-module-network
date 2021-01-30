/* ROUTE53 */
output "name" {
  value = module.record.record_name
}

output "fqdn" {
  value = module.record.record_fqdn
}