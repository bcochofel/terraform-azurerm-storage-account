data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "st" {
  name = var.name

  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location

  account_kind             = var.account_kind
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = var.tags
}

resource "azurerm_storage_container" "sc" {
  for_each = local.containers

  name                  = each.value.name
  storage_account_name  = azurerm_storage_account.st.name
  container_access_type = each.value.access_type
}
