resource "azurerm_network_interface" "nic-block" {
  for_each = var.vm
  name = each.value.vm-nic
  resource_group_name = each.value.resource_group_name
  location = each.value.location

  ip_configuration {
    name = "internal"
    subnet_id = data.azurerm_subnet.datasubnetblock[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.datapipblock[each.key].id
  }

}

resource "azurerm_linux_virtual_machine" "vmblock" {
    for_each = var.vm
    name = each.value.vm-name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    size = "Standard_F2"
    admin_username = "adminuser"
    admin_password = "Qwertyuiop@123"
    disable_password_authentication = false
    network_interface_ids = [azurerm_network_interface.nic-block[each.key].id,]
   

   custom_data= filebase64("${path.module}/cloud-init.txt")

   

    os_disk {
      caching = "ReadWrite"
      storage_account_type = "Standard_LRS"

    }
  
   source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
   }
}