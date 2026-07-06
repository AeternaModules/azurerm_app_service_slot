output "app_service_slots" {
  description = "All app_service_slot resources"
  value       = azurerm_app_service_slot.app_service_slots
  sensitive   = true
}
output "app_service_slots_app_service_name" {
  description = "List of app_service_name values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.app_service_name]
}
output "app_service_slots_app_service_plan_id" {
  description = "List of app_service_plan_id values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.app_service_plan_id]
}
output "app_service_slots_app_settings" {
  description = "List of app_settings values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.app_settings]
}
output "app_service_slots_auth_settings" {
  description = "List of auth_settings values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.auth_settings]
  sensitive   = true
}
output "app_service_slots_client_affinity_enabled" {
  description = "List of client_affinity_enabled values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.client_affinity_enabled]
}
output "app_service_slots_connection_string" {
  description = "List of connection_string values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.connection_string]
  sensitive   = true
}
output "app_service_slots_default_site_hostname" {
  description = "List of default_site_hostname values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.default_site_hostname]
}
output "app_service_slots_enabled" {
  description = "List of enabled values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.enabled]
}
output "app_service_slots_https_only" {
  description = "List of https_only values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.https_only]
}
output "app_service_slots_identity" {
  description = "List of identity values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.identity]
}
output "app_service_slots_key_vault_reference_identity_id" {
  description = "List of key_vault_reference_identity_id values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.key_vault_reference_identity_id]
}
output "app_service_slots_location" {
  description = "List of location values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.location]
}
output "app_service_slots_logs" {
  description = "List of logs values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.logs]
  sensitive   = true
}
output "app_service_slots_name" {
  description = "List of name values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.name]
}
output "app_service_slots_resource_group_name" {
  description = "List of resource_group_name values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.resource_group_name]
}
output "app_service_slots_site_config" {
  description = "List of site_config values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.site_config]
}
output "app_service_slots_site_credential" {
  description = "List of site_credential values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.site_credential]
}
output "app_service_slots_storage_account" {
  description = "List of storage_account values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.storage_account]
  sensitive   = true
}
output "app_service_slots_tags" {
  description = "List of tags values across all app_service_slots"
  value       = [for k, v in azurerm_app_service_slot.app_service_slots : v.tags]
}

