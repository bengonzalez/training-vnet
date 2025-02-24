resource "azurerm_private_dns_zone" "pdns" {
  name                = local.pdns_name
  resource_group_name = azurerm_resource_group.rg-vnet.name
  tags                = local.common_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "network_link" {
  name                  = "vnet_link"
  resource_group_name   = azurerm_resource_group.rg-vnet.name
  private_dns_zone_name = azurerm_private_dns_zone.pdns.name
  virtual_network_id    = azurerm_virtual_network.vnet.id
}

resource "azurerm_private_dns_zone" "pdns_db" {
  name                = local.pdns_db_name
  resource_group_name = azurerm_resource_group.rg-vnet.name
  tags                = local.common_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "network_link_db" {
  name                  = "vnet_link_db"
  resource_group_name   = azurerm_resource_group.rg-vnet.name
  private_dns_zone_name = azurerm_private_dns_zone.pdns_db.name
  virtual_network_id    = azurerm_virtual_network.vnet.id
}

resource "azurerm_private_dns_zone" "pdns_kv" {
  name                = local.pdns_kv_name
  resource_group_name = azurerm_resource_group.rg-vnet.name
  tags                = local.common_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "network_link_kv" {
  name                  = "vnet_link_kv"
  resource_group_name   = azurerm_resource_group.rg-vnet.name
  private_dns_zone_name = azurerm_private_dns_zone.pdns_kv.name
  virtual_network_id    = azurerm_virtual_network.vnet.id
}

resource "azurerm_private_dns_zone" "pdns_blob" {
  name                = local.pdns_blob_name
  resource_group_name = azurerm_resource_group.rg-vnet.name
  tags                = local.common_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "network_link_blob" {
  name                  = "vnet_link_blob"
  resource_group_name   = azurerm_resource_group.rg-vnet.name
  private_dns_zone_name = azurerm_private_dns_zone.pdns_blob.name
  virtual_network_id    = azurerm_virtual_network.vnet.id
}

resource "azurerm_private_dns_zone" "pdns_file" {
  name                = var.pdns_file_name
  resource_group_name = azurerm_resource_group.rg-vnet.name
  tags = local.common_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "network_link_file" {
  name                  = "spoke_link_blob"
  resource_group_name   = azurerm_resource_group.rg-vnet.name
  private_dns_zone_name = azurerm_private_dns_zone.pdns_file.name
  virtual_network_id    = azurerm_virtual_network.vnet.id
}
