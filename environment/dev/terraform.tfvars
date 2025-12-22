rgs = {
  rg1 = {
    name     = "dev-infra-rgs01"
    location = "EastUS"
  }
}

vnets = {
  vnet1 = {
    name                = "dev-infra-vnet01"
    location            = "EastUS"
    resource_group_name = "dev-infra-rgs01"
    address_space       = ["10.0.0.0/16"]

    subnets = {
      subnet1 = {
        name             = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      }
      subnet2 = {
        name             = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    }

    tags = {
      environment = "Production"
    }
  }
}

kvs = {
  kv1 = {
    name                = "dev-infra-kv01"
    location            = "EastUS"
    resource_group_name = "dev-infra-rgs01"
  }
}

public_ips = {
  ip1 = {
    name                = "dev-infra-pbip01"
    resource_group_name = "dev-infra-rgs01"
    location            = "EastUS"
    allocation_method   = "Static"
  }
  ip2 = {
    name                = "dev-infra-pbip02"
    resource_group_name = "dev-infra-rgs01"
    location            = "EastUS"
    allocation_method   = "Static"
  }
}

vms = {
  vm1 = {
    vm_name     = "frontend-vm"
    location    = "EastUS"
    vm_size     = "Standard_F2"
    nic_name    = "frontend-nic"
    rg_name     = "dev-infra-rgs01"
    vnet_name   = "dev-infra-vnet01"
    subnet_name = "frontend-subnet"
    pip_name    = "dev-infra-pbip01"
    kv_name     = "dev-infra-kv01"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }

  vm2 = {
    vm_name     = "backend-vm"
    location    = "EastUS"
    vm_size     = "Standard_F2"
    nic_name    = "backend-nic"
    rg_name     = "dev-infra-rgs01"
    vnet_name   = "dev-infra-vnet01"
    subnet_name = "frontend-subnet"
    pip_name    = "dev-infra-pbip02"
    kv_name     = "dev-infra-kv01"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}




