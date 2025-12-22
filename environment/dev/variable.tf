variable "rgs" {
  type = map(object({
    name = string
    location = string
  }))
}

variable "vnets" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)

    subnets = map(object({
      name = string
      address_prefixes = list(string)
    }))

    tags = map(string)
  }))
}

variable "kvs" {
  type = map(object({
    name = string
    location = string
    resource_group_name = string
  }))
}

variable "public_ips" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}

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
