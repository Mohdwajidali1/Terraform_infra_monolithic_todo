rgs = {
  rg1 = {
    name       = "rg-dev11"
    location   = "centralindia"
    managed_by = "terraform"
    tags = {
      owner       = "Hashicorp"
      environment = "dev"
    }
  }
}

# stgs = {
#   "storage01" = {
#   name                     = "stgstorage01"
#   location                 = "centralindia"
#   resource_group_name      = "rg_dhondhu"
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#  access_tier = "Hot"


#    tags = {
#       owner       = "Hashicorp"
#       environment = "dev"
#     }
#   }
# }

stgs = {
  storage01 = {
    name                       = "devstorage011"
    location                   = "Central India"
    resource_group_name        = "rg-dev11"
    account_tier               = "Standard"
    account_kind               = "StorageV2"
    account_replication_type   = "LRS"
    access_tier                = "Hot"
    https_traffic_only_enabled = true
    is_hns_enabled             = false
    sftp_enabled               = false
    tags = {
      Environment = "dev"
      Owner       = "devOpsTeam"
    }
  }

  # storage02 = {
  #   name                     = "devstorage02"
  #   location                 = "Central India"
  #   resource_group_name      = "rg-dev"
  #   account_tier             = "Premium"
  #   account_replication_type = "ZRS"
  #   access_tier              = "Hot"
  #   tags = {
  #     Environment = "dev"
  #     Owner       = "InfraTeam"
  #   }
  # }
}

public_ips = {
  pip1 = {
    name                    = "dev-public-ip-011"
    resource_group_name     = "rg-dev11"
    location                = "Central India"
    allocation_method       = "Static"
    sku                     = "Standard"
    sku_tier                = "Regional"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = 10
    tags = {
      Environment = "dev"
      Owner       = "devOpsTeam"
    }
  }

  # pip2 = {
  #   name                = "dev-public-ip-02"
  #   resource_group_name = "rg-dev"
  #   location            = "Central India"
  #   allocation_method   = "Static"
  #   sku                 = "Standard"
  #   sku_tier            = "Global"
  #   domain_name_label   = "devweb01"
  #   tags = {
  #     Environment = "dev"
  #     Owner       = "InfraTeam"
  #   }
  # }
}

key_vaults = {
  kv1 = {
    kv_name   = "kv-demo-dev012"
    location  = "Central India"
    rg_name   = "rg-dev11"
    tenant_id = "cf352d1c-888a-402f-869f-9cad4c361979"
    sku_name  = "standard"
    access_policies = [
      {
        tenant_id          = "cf352d1c-888a-402f-869f-9cad4c361979"
        object_id          = "40fadabc-aa3b-4043-a0a0-4a454d3b45b7"
        key_permissions    = ["Get", "List"]
        secret_permissions = ["Get", "Set", "List"]
      }
    ]
    tags = {
      Environment = "dev"
      ManagedBy   = "Terraform"

    }
  }
}

kubernetes_clusters = {
  dev = {
    name                = "aks-tododev-011"
    location            = "Central India"
    resource_group_name = "rg-dev11"
    dns_prefix          = "aksdev011"
    tags = {
      Environment = "dev"
      ManagedBy   = "Terraform"
    }
  }
}

acr = {
  acr1 = {
    acr_name            = "myacr0011"
    resource_group_name = "rg-dev11"
    location            = "Central India"
    georeplications = [
      {
        location                = "West Europe"
        zone_redundancy_enabled = true
        tags = {
          Environment = "dev"
          ManagedBy   = "Terraform"
        }
      }

    ]
  }
}

sql_servers = {
  sql1 = {
    name                         = "my-sqlserver-dev11"
    resource_group_name          = "rg-dev11"
    location                     = "Central India"
    administrator_login          = "sqladmin"
    administrator_login_password = "P@ssword123!"
    azuread_administrator = {
      login_username = "Mdwajid@devopsbs089gmail.onmicrosoft.com"
      object_id      = "40fadabc-aa3b-4043-a0a0-4a454d3b45b7"
    }
    tags = {
      Environment = "dev"
      ManagedBy   = "Terraform"
    }
  }
}






