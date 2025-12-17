rgs = {
  rg1 = {
    name       = "dev-aks-rg"
    location   = "centralindia"
    managed_by = "Terraform"
    tags = {
      env = "dev"
    }
  }
}

networks = {
  vnet1 = {
    name                = "vnet-dev-aks-rg"
    location            = "centralindia"
    resource_group_name = "dev-aks-rg"
    address_space       = ["10.0.0.0/16"]
    tags = {
      environment = "dev"
    }
    subnets = [
      {
        name             = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      },
      {
        name             = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}

public_ips = {
  app1 = {
    name                = "pip-dev-aks-rg"
    resource_group_name = "dev-aks-rg"
    location            = "centralindia"
    allocation_method   = "Static"
    tags = {
      app = "frontend"
      env = "prod"
    }
  }
  app2 = {
    name                = "pip-dev-aks-rg"
    resource_group_name = "dev-aks-rg"
    location            = "centralindia"
    allocation_method   = "Static"
    tags = {
      app = "frontend"
      env = "prod"
    }
  }
}


key_vaults = {
  kv1 = {
    kv_name  = "kv-dev-aks-rg"
    location = "centralindia"
    rg_name  = "rg-dev-aks-rg"
  }
}
