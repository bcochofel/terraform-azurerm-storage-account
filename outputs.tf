output "id" {
  description = "Id of the storage account created."
  value       = azurerm_storage_account.st.id
}

output "name" {
  description = "Name of the storage account created."
  value       = azurerm_storage_account.st.name
}

output "containers" {
  description = "Containers created."
  value       = azurerm_storage_container.sc
}

output "tags" {
  description = "Storage Account tags."
  value       = azurerm_storage_account.st.tags
}
