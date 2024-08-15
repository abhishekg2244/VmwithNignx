module "rg" {
    source = "../../Modules/Azurerm_rg"
    rg= var.rgs
  
}

module "vnet" {
    depends_on = [ module.rg ]
    source = "../../Modules/Azurerm_vnet"
    vnet = var.vnets
  
}

module "subnet" {
    depends_on = [ module.rg,module.vnet ]
  source = "../../Modules/Azurerm_subnet"  
  subnet = var.subnets
}

module "vm" {
  depends_on = [ module.rg,module.vnet,module.subnet ]
  source = "../../Modules/Azurerm_VM"
  vm = var.vms
}

module "pip" {
    depends_on = [ module.rg ]
    source = "../../Modules/azurerm_pip"
    pip = var.pips
}