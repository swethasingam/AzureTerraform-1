# Define an Azure Public IP Address resource.
resource "azurerm_public_ip" "public_ip" {
  name                = "pip"                                                           # Name of the Public IP Address.
  location              = azurerm_resource_group.myrg.location                       # Location where the VM will be created.
  resource_group_name   = azurerm_resource_group.myrg.name                             # Name of the Azure Resource Group.
  allocation_method   = "Static"                                                    # Specify the allocation method as "Static."

  # A static Public IP Address provides a fixed, unchanging IP address to associated resources.
}