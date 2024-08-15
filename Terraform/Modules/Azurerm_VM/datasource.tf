data "azurerm_subnet" "datasubnetblock" {
    for_each = var.vm
    name = each.value.datasubnet
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
  
}

data "azurerm_public_ip" "datapipblock" {
  for_each = var.vm
  name = each.value.datapip
  resource_group_name = each.value.resource_group_name
}