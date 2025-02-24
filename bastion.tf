# Create public IPs
resource "azurerm_public_ip" "pip-cg3-bastion" {
  count               = 0
  name                = "pipcg3devbastion"
  location            = azurerm_resource_group.rg-vnet.location
  resource_group_name = azurerm_resource_group.rg-vnet.name
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = local.common_tags

}

resource "azurerm_bastion_host" "bh-cg3-bastion" {
  count               = 0
  name                = "cg3bastionhost"
  location            = azurerm_resource_group.rg-vnet.location
  resource_group_name = azurerm_resource_group.rg-vnet.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.bastion.id
    public_ip_address_id = azurerm_public_ip.pip-cg3-bastion[0].id
  }
}