rgs = {
  rg1={
    name= "QA_AUG_RG_001"
    location = "East us 2"

  }
}

vnets = {
  vnet1={
     name = "QA_AUG_VNET1"
    resource_group_name = "QA_AUG_RG_001"
    location = "East us 2"
    address_space = ["10.10.0.0/16"]
  }

  vnet2={
     name = "QA_AUG_VNET2"
    resource_group_name = "QA_AUG_RG_001"
    location = "East us 2"
    address_space = ["10.20.0.0/16"]
  }
}

subnets = {
  subnet1={
    name = "QA_subnet_frontend"
    resource_group_name = "QA_AUG_RG_001"
    virtual_network_name = "QA_AUG_VNET1"
     address_prefixes =   ["10.10.10.0/24"]
  }
}

vms = {
  vm1 ={
    vm-name = "frontendvm1"
    vm-nic ="frontendvm1-nic"
    resource_group_name = "QA_AUG_RG_001"
    virtual_network_name = "QA_AUG_VNET1"
    datasubnet = "QA_subnet_frontend"
    location = "East us 2"
    datapip = "publicip1"

  }
}

pips = {
  pip1={
  resource_group_name = "QA_AUG_RG_001"
  location = "East us 2"
  pip-name = "publicip1"
  sku = "Standard"
  allocation_method   = "Static"
  }
}