# Create RG for Vnet
resource "azurerm_resource_group" "rg-vnet" {
  name                = local.rg_name
  location            = var.region
  tags                = local.common_tags
}
# Create virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = local.vnet_name
  address_space       = [var.vnet_addr]
  location            = var.region
  resource_group_name = local.rg_name
  tags                = local.common_tags

  depends_on = [
    azurerm_resource_group.rg-vnet
  ]
}

# Create subnets
resource "azurerm_subnet" "dev" {
  name                 = local.snet_name_dev
  resource_group_name  = local.rg_name
  enforce_private_link_endpoint_network_policies = true
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.snet_addr_dev]
  depends_on           = [azurerm_virtual_network.vnet]
  service_endpoints    = ["Microsoft.KeyVault", "Microsoft.AzureCosmosDB", "Microsoft.Storage", "Microsoft.Sql"]
}
resource "azurerm_subnet" "qa" {
  name                 = local.snet_name_qa
  resource_group_name  = local.rg_name
  enforce_private_link_endpoint_network_policies = true
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.snet_addr_qa]
  depends_on           = [azurerm_virtual_network.vnet]
  service_endpoints    = ["Microsoft.KeyVault", "Microsoft.AzureCosmosDB", "Microsoft.Storage", "Microsoft.Sql"]
}

resource "azurerm_subnet" "perf" {
  name                 = local.snet_name_perf
  resource_group_name  = local.rg_name
  enforce_private_link_endpoint_network_policies = true
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.snet_addr_perf]
  depends_on           = [azurerm_virtual_network.vnet]
  service_endpoints    = ["Microsoft.KeyVault", "Microsoft.AzureCosmosDB", "Microsoft.Storage", "Microsoft.Sql"]
}

resource "azurerm_subnet" "prod" {
  name                 = local.snet_name_prod
  resource_group_name  = local.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  enforce_private_link_endpoint_network_policies = true
  address_prefixes     = [var.snet_addr_prod]
  depends_on           = [azurerm_virtual_network.vnet]
  service_endpoints    = ["Microsoft.KeyVault", "Microsoft.AzureCosmosDB", "Microsoft.Storage", "Microsoft.Sql"]
}

resource "azurerm_subnet" "bastion" {
  name                 = local.snet_name_bastion
  resource_group_name  = local.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.snet_addr_bastion]
  depends_on           = [azurerm_virtual_network.vnet]
  service_endpoints    = ["Microsoft.KeyVault", "Microsoft.AzureCosmosDB", "Microsoft.Storage", "Microsoft.Sql"]
}
