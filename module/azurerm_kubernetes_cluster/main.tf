resource "azurerm_kubernetes_cluster" "aks_block" {
  for_each            = var.kubernetes_clusters
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = each.value.dns_prefix
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s_v2"

  }

  identity {
    type = "SystemAssigned"
  }

  tags = each.value.tags
}

