rgs = {
  rg1 = {
    name       = "rg-prod-dev-aks-rg"
    location   = "centralindia"
    managed_by = "Terraform"
    tags = {
      env = "dev"
    }
  }
}

container_registries = {
  c1 = {
    name                = "devopsinsidersc123"
    resource_group_name = "rg-prod-dev-aks-rg"
    location            = "centralindia"
    sku                 = "Standard"
    admin_enabled       = true
  }
}

key_vaults = {
  k1 = {
    name                        = "devopsinsiderskv232"
    location                    = "centralindia"
    resource_group_name         = "rg-prod-dev-aks-rg"
    enabled_for_disk_encryption = true
    tenant_id                   = "0f7010fd-209e-4344-8457-043ffb37143b"
    soft_delete_retention_days  = 7
    purge_protection_enabled    = true
    sku_name                    = "standard"
    access_policies = {
      a1 = {
        tenant_id = "57464fa0-05a4-4855-a9af-e5be611b8553"
        object_id = "9f3c2b8e-6a41-4d7b-8a92-3e5d1c4f7b2a"

        key_permissions     = ["Get"]
        secret_permissions  = ["Get"]
        storage_permissions = ["Get"]
      }
    }
  }
}
