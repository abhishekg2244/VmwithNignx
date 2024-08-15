rgs = {
  rg1={
    name= "PROD_AUG_RG_001"
    location = "East us 2"

  }
}

vnets = {
  vnet1={
     name = "PROD_AUG_VNET1"
    resource_group_name = "PROD_AUG_RG_001"
    location = "East us 2"
    address_space = ["10.0.0.0/16"]
  }

  vnet2={
    name = "PROD_AUG_VNET2"
    resource_group_name = "PROD_AUG_RG_001"
    location = "East us 2"
    address_space = ["172.0.0.0/16"]
  }
}

subnets = {
  subnet1={
    name = "PROD_subnet_frontend"
    resource_group_name = "PROD_AUG_RG_001"
    virtual_network_name = "PROD_AUG_VNET1"
     address_prefixes =   ["10.0.1.0/24"]
  }
}

vms = {
  vm1 ={
    vm-name = "Pfrontendvm1"
    vm-nic ="Pfrontendvm1-nic"
    resource_group_name = "PROD_AUG_RG_001"
    virtual_network_name = "PROD_AUG_VNET1"
    datasubnet = "PROD_subnet_frontend"
    location = "East us 2"

  }
}
pips = {
  pip1={
  resource_group_name = "PROD_AUG_RG_001"
  location = "East us 2"
  pip-name = "prodpublicip1"
  sku = "Standard"
  allocation_method   = "Static"
  }
}