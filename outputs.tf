output "app_service_slots_id" {
  description = "Map of id values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_service_slots_app_service_name" {
  description = "Map of app_service_name values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.app_service_name if v.app_service_name != null && length(v.app_service_name) > 0 }
}
output "app_service_slots_app_service_plan_id" {
  description = "Map of app_service_plan_id values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.app_service_plan_id if v.app_service_plan_id != null && length(v.app_service_plan_id) > 0 }
}
output "app_service_slots_app_settings" {
  description = "Map of app_settings values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.app_settings if v.app_settings != null && length(v.app_settings) > 0 }
}
output "app_service_slots_auth_settings" {
  description = "Map of auth_settings values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.auth_settings if v.auth_settings != null && length(v.auth_settings) > 0 }
  sensitive   = true
}
output "app_service_slots_client_affinity_enabled" {
  description = "Map of client_affinity_enabled values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.client_affinity_enabled if v.client_affinity_enabled != null }
}
output "app_service_slots_connection_string" {
  description = "Map of connection_string values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.connection_string if v.connection_string != null && length(v.connection_string) > 0 }
  sensitive   = true
}
output "app_service_slots_default_site_hostname" {
  description = "Map of default_site_hostname values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.default_site_hostname if v.default_site_hostname != null && length(v.default_site_hostname) > 0 }
}
output "app_service_slots_enabled" {
  description = "Map of enabled values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.enabled if v.enabled != null }
}
output "app_service_slots_https_only" {
  description = "Map of https_only values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.https_only if v.https_only != null }
}
output "app_service_slots_identity" {
  description = "Map of identity values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "app_service_slots_key_vault_reference_identity_id" {
  description = "Map of key_vault_reference_identity_id values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.key_vault_reference_identity_id if v.key_vault_reference_identity_id != null && length(v.key_vault_reference_identity_id) > 0 }
}
output "app_service_slots_location" {
  description = "Map of location values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.location if v.location != null && length(v.location) > 0 }
}
output "app_service_slots_logs" {
  description = "Map of logs values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.logs if v.logs != null && length(v.logs) > 0 }
  sensitive   = true
}
output "app_service_slots_name" {
  description = "Map of name values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.name if v.name != null && length(v.name) > 0 }
}
output "app_service_slots_resource_group_name" {
  description = "Map of resource_group_name values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "app_service_slots_site_config" {
  description = "Map of site_config values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.site_config if v.site_config != null && length(v.site_config) > 0 }
}
output "app_service_slots_site_credential" {
  description = "Map of site_credential values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.site_credential if v.site_credential != null && length(v.site_credential) > 0 }
}
output "app_service_slots_storage_account" {
  description = "Map of storage_account values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.storage_account if v.storage_account != null && length(v.storage_account) > 0 }
  sensitive   = true
}
output "app_service_slots_tags" {
  description = "Map of tags values across all app_service_slots, keyed the same as var.app_service_slots"
  value       = { for k, v in azurerm_app_service_slot.app_service_slots : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

