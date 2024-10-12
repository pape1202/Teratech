resource "azurerm_public_ip" "myname" {
  name                = "day4-pub-ip"
  allocation_method   = "dynamic"
  resource_group_name = data.azurerm_resource_group.myrg.name
  location            = data.azurerm_resource_group.myrg

}

data "azurerm_resource_group" "myrg" {
  name = "day4rg"
}