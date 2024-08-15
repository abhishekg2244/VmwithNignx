resource "azurerm_public_ip" "pipblock" {
  for_each = var.pip  
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  name = each.value.pip-name
  sku = each.value.sku
   allocation_method   = each.value.allocation_method

}