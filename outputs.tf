output "transit_secret_cache_configs_id" {
  description = "Map of id values across all transit_secret_cache_configs, keyed the same as var.transit_secret_cache_configs except keys with no id are omitted"
  value       = { for k, v in vault_transit_secret_cache_config.transit_secret_cache_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "transit_secret_cache_configs_backend" {
  description = "Map of backend values across all transit_secret_cache_configs, keyed the same as var.transit_secret_cache_configs except keys with no backend are omitted"
  value       = { for k, v in vault_transit_secret_cache_config.transit_secret_cache_configs : k => v.backend if v.backend != null && length(v.backend) > 0 }
}
output "transit_secret_cache_configs_namespace" {
  description = "Map of namespace values across all transit_secret_cache_configs, keyed the same as var.transit_secret_cache_configs except keys with no namespace are omitted"
  value       = { for k, v in vault_transit_secret_cache_config.transit_secret_cache_configs : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "transit_secret_cache_configs_size" {
  description = "Map of size values across all transit_secret_cache_configs, keyed the same as var.transit_secret_cache_configs except keys with no size are omitted"
  value       = { for k, v in vault_transit_secret_cache_config.transit_secret_cache_configs : k => v.size if v.size != null }
}

