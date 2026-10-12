resource "vault_transit_secret_cache_config" "transit_secret_cache_configs" {
  for_each = var.transit_secret_cache_configs

  backend   = each.value.backend
  size      = each.value.size
  namespace = each.value.namespace
}

