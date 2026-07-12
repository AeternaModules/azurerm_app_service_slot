output "app_service_slots_app_service_name" {
  description = "Map of app_service_name values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.app_service_name }
}
output "app_service_slots_app_service_plan_id" {
  description = "Map of app_service_plan_id values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.app_service_plan_id }
}
output "app_service_slots_app_settings" {
  description = "Map of app_settings values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.app_settings }
}
output "app_service_slots_auth_settings" {
  description = "Map of auth_settings values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.auth_settings }
  sensitive   = true
}
output "app_service_slots_client_affinity_enabled" {
  description = "Map of client_affinity_enabled values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.client_affinity_enabled }
}
output "app_service_slots_connection_string" {
  description = "Map of connection_string values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.connection_string }
  sensitive   = true
}
output "app_service_slots_default_site_hostname" {
  description = "Map of default_site_hostname values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.default_site_hostname }
}
output "app_service_slots_enabled" {
  description = "Map of enabled values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.enabled }
}
output "app_service_slots_https_only" {
  description = "Map of https_only values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.https_only }
}
output "app_service_slots_identity" {
  description = "Map of identity values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.identity }
}
output "app_service_slots_key_vault_reference_identity_id" {
  description = "Map of key_vault_reference_identity_id values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.key_vault_reference_identity_id }
}
output "app_service_slots_location" {
  description = "Map of location values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.location }
}
output "app_service_slots_logs" {
  description = "Map of logs values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.logs }
  sensitive   = true
}
output "app_service_slots_name" {
  description = "Map of name values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.name }
}
output "app_service_slots_resource_group_name" {
  description = "Map of resource_group_name values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.resource_group_name }
}
output "app_service_slots_site_config" {
  description = "Map of site_config values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.site_config }
}
output "app_service_slots_site_credential" {
  description = "Map of site_credential values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.site_credential }
}
output "app_service_slots_storage_account" {
  description = "Map of storage_account values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.storage_account }
  sensitive   = true
}
output "app_service_slots_tags" {
  description = "Map of tags values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.tags }
}

