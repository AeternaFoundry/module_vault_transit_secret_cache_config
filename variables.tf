variable "transit_secret_cache_configs" {
  description = <<EOT
Map of transit_secret_cache_configs, attributes below
Required:
    - backend
    - size
Optional:
    - namespace
EOT

  type = map(object({
    backend   = string
    size      = number
    namespace = optional(string)
  }))
}

