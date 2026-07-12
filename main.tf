resource "azurerm_app_service_slot" "app_service_slots" {
  for_each = var.app_service_slots

  app_service_name                = each.value.app_service_name
  app_service_plan_id             = each.value.app_service_plan_id
  location                        = each.value.location
  name                            = each.value.name
  resource_group_name             = each.value.resource_group_name
  app_settings                    = each.value.app_settings
  client_affinity_enabled         = each.value.client_affinity_enabled
  enabled                         = each.value.enabled
  https_only                      = each.value.https_only
  key_vault_reference_identity_id = each.value.key_vault_reference_identity_id
  tags                            = each.value.tags

  dynamic "auth_settings" {
    for_each = each.value.auth_settings != null ? [each.value.auth_settings] : []
    content {
      dynamic "active_directory" {
        for_each = auth_settings.value.active_directory != null ? [auth_settings.value.active_directory] : []
        content {
          allowed_audiences = active_directory.value.allowed_audiences
          client_id         = active_directory.value.client_id
          client_secret     = active_directory.value.client_secret
        }
      }
      additional_login_params        = auth_settings.value.additional_login_params
      allowed_external_redirect_urls = auth_settings.value.allowed_external_redirect_urls
      default_provider               = auth_settings.value.default_provider
      enabled                        = auth_settings.value.enabled
      dynamic "facebook" {
        for_each = auth_settings.value.facebook != null ? [auth_settings.value.facebook] : []
        content {
          app_id       = facebook.value.app_id
          app_secret   = facebook.value.app_secret
          oauth_scopes = facebook.value.oauth_scopes
        }
      }
      dynamic "google" {
        for_each = auth_settings.value.google != null ? [auth_settings.value.google] : []
        content {
          client_id     = google.value.client_id
          client_secret = google.value.client_secret
          oauth_scopes  = google.value.oauth_scopes
        }
      }
      issuer = auth_settings.value.issuer
      dynamic "microsoft" {
        for_each = auth_settings.value.microsoft != null ? [auth_settings.value.microsoft] : []
        content {
          client_id     = microsoft.value.client_id
          client_secret = microsoft.value.client_secret
          oauth_scopes  = microsoft.value.oauth_scopes
        }
      }
      runtime_version               = auth_settings.value.runtime_version
      token_refresh_extension_hours = auth_settings.value.token_refresh_extension_hours
      token_store_enabled           = auth_settings.value.token_store_enabled
      dynamic "twitter" {
        for_each = auth_settings.value.twitter != null ? [auth_settings.value.twitter] : []
        content {
          consumer_key    = twitter.value.consumer_key
          consumer_secret = twitter.value.consumer_secret
        }
      }
      unauthenticated_client_action = auth_settings.value.unauthenticated_client_action
    }
  }

  dynamic "connection_string" {
    for_each = each.value.connection_string != null ? each.value.connection_string : []
    content {
      name  = connection_string.value.name
      type  = connection_string.value.type
      value = connection_string.value.value
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "logs" {
    for_each = each.value.logs != null ? [each.value.logs] : []
    content {
      dynamic "application_logs" {
        for_each = logs.value.application_logs != null ? [logs.value.application_logs] : []
        content {
          dynamic "azure_blob_storage" {
            for_each = application_logs.value.azure_blob_storage != null ? [application_logs.value.azure_blob_storage] : []
            content {
              level             = azure_blob_storage.value.level
              retention_in_days = azure_blob_storage.value.retention_in_days
              sas_url           = azure_blob_storage.value.sas_url
            }
          }
          file_system_level = application_logs.value.file_system_level
        }
      }
      detailed_error_messages_enabled = logs.value.detailed_error_messages_enabled
      failed_request_tracing_enabled  = logs.value.failed_request_tracing_enabled
      dynamic "http_logs" {
        for_each = logs.value.http_logs != null ? [logs.value.http_logs] : []
        content {
          dynamic "azure_blob_storage" {
            for_each = http_logs.value.azure_blob_storage != null ? [http_logs.value.azure_blob_storage] : []
            content {
              retention_in_days = azure_blob_storage.value.retention_in_days
              sas_url           = azure_blob_storage.value.sas_url
            }
          }
          dynamic "file_system" {
            for_each = http_logs.value.file_system != null ? [http_logs.value.file_system] : []
            content {
              retention_in_days = file_system.value.retention_in_days
              retention_in_mb   = file_system.value.retention_in_mb
            }
          }
        }
      }
    }
  }

  dynamic "site_config" {
    for_each = each.value.site_config != null ? [each.value.site_config] : []
    content {
      acr_use_managed_identity_credentials = site_config.value.acr_use_managed_identity_credentials
      acr_user_managed_identity_client_id  = site_config.value.acr_user_managed_identity_client_id
      always_on                            = site_config.value.always_on
      app_command_line                     = site_config.value.app_command_line
      auto_swap_slot_name                  = site_config.value.auto_swap_slot_name
      dynamic "cors" {
        for_each = site_config.value.cors != null ? [site_config.value.cors] : []
        content {
          allowed_origins     = cors.value.allowed_origins
          support_credentials = cors.value.support_credentials
        }
      }
      default_documents        = site_config.value.default_documents
      dotnet_framework_version = site_config.value.dotnet_framework_version
      ftps_state               = site_config.value.ftps_state
      health_check_path        = site_config.value.health_check_path
      http2_enabled            = site_config.value.http2_enabled
      dynamic "ip_restriction" {
        for_each = site_config.value.ip_restriction != null ? site_config.value.ip_restriction : []
        content {
          action = ip_restriction.value.action
          dynamic "headers" {
            for_each = ip_restriction.value.headers != null ? [ip_restriction.value.headers] : []
            content {
              x_azure_fdid      = headers.value.x_azure_fdid
              x_fd_health_probe = headers.value.x_fd_health_probe
              x_forwarded_for   = headers.value.x_forwarded_for
              x_forwarded_host  = headers.value.x_forwarded_host
            }
          }
          ip_address                = ip_restriction.value.ip_address
          name                      = ip_restriction.value.name
          priority                  = ip_restriction.value.priority
          service_tag               = ip_restriction.value.service_tag
          virtual_network_subnet_id = ip_restriction.value.virtual_network_subnet_id
        }
      }
      java_container           = site_config.value.java_container
      java_container_version   = site_config.value.java_container_version
      java_version             = site_config.value.java_version
      linux_fx_version         = site_config.value.linux_fx_version
      local_mysql_enabled      = site_config.value.local_mysql_enabled
      managed_pipeline_mode    = site_config.value.managed_pipeline_mode
      min_tls_version          = site_config.value.min_tls_version
      number_of_workers        = site_config.value.number_of_workers
      php_version              = site_config.value.php_version
      python_version           = site_config.value.python_version
      remote_debugging_enabled = site_config.value.remote_debugging_enabled
      remote_debugging_version = site_config.value.remote_debugging_version
      dynamic "scm_ip_restriction" {
        for_each = site_config.value.scm_ip_restriction != null ? site_config.value.scm_ip_restriction : []
        content {
          action = scm_ip_restriction.value.action
          dynamic "headers" {
            for_each = scm_ip_restriction.value.headers != null ? [scm_ip_restriction.value.headers] : []
            content {
              x_azure_fdid      = headers.value.x_azure_fdid
              x_fd_health_probe = headers.value.x_fd_health_probe
              x_forwarded_for   = headers.value.x_forwarded_for
              x_forwarded_host  = headers.value.x_forwarded_host
            }
          }
          ip_address                = scm_ip_restriction.value.ip_address
          name                      = scm_ip_restriction.value.name
          priority                  = scm_ip_restriction.value.priority
          service_tag               = scm_ip_restriction.value.service_tag
          virtual_network_subnet_id = scm_ip_restriction.value.virtual_network_subnet_id
        }
      }
      scm_type                    = site_config.value.scm_type
      scm_use_main_ip_restriction = site_config.value.scm_use_main_ip_restriction
      use_32_bit_worker_process   = site_config.value.use_32_bit_worker_process
      vnet_route_all_enabled      = site_config.value.vnet_route_all_enabled
      websockets_enabled          = site_config.value.websockets_enabled
      windows_fx_version          = site_config.value.windows_fx_version
    }
  }

  dynamic "storage_account" {
    for_each = each.value.storage_account != null ? each.value.storage_account : []
    content {
      access_key   = storage_account.value.access_key
      account_name = storage_account.value.account_name
      mount_path   = storage_account.value.mount_path
      name         = storage_account.value.name
      share_name   = storage_account.value.share_name
      type         = storage_account.value.type
    }
  }
}

