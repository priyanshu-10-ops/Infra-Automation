variable "vms" {
  type = map(object({
    vm_name                = string
    location               = string
    vm_size                = string
    nic_name               = string
    rg_name                = string
    vnet_name              = string
    subnet_name            = string
    pip_name               = string
    kv_name                = string
    source_image_reference = map(string)
  }))
}

