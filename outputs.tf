
output "vpc_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_id_dev" {
  value = azurerm_subnet.dev.id
}

output "subnet_id_qa" {
  value = azurerm_subnet.qa.id
}

output "subnet_id_perf" {
  value = azurerm_subnet.perf.id
}

output "subnet_id_prod" {
  value = azurerm_subnet.prod.id
}

output "vpc_rg_name" {
  value = local.rg_name
}

output "pdns_name" {
  value = azurerm_private_dns_zone.pdns.name
}

output "pdns_db_id" {
  value = azurerm_private_dns_zone.pdns_db.id
}

output "pdns_db_name" {
  value = azurerm_private_dns_zone.pdns_db.name
}

output "pdns_kv_id" {
  value = azurerm_private_dns_zone.pdns_kv.id
}

output "pdns_kv_name" {
  value = azurerm_private_dns_zone.pdns_kv.name
}

output "pdns_blob_id" {
  value = azurerm_private_dns_zone.pdns_blob.id
}

output "pdns_blob_name" {
  value = azurerm_private_dns_zone.pdns_blob.name
}

output "pdns_file_id" {
  value = azurerm_private_dns_zone.pdns_file.id
}

output "pdns_file_name" {
  value = azurerm_private_dns_zone.pdns_file.name
}
