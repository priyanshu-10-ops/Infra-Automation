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
