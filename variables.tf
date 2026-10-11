variable "synthetics_private_locations" {
  description = <<EOT
Map of synthetics_private_locations, attributes below
Required:
    - name
Optional:
    - api_key
    - description
    - tags
    - metadata (block):
        - restricted_roles (optional)
EOT

  type = map(object({
    name        = string
    api_key     = optional(string)
    description = optional(string)
    tags        = optional(list(string))
    metadata = optional(list(object({
      restricted_roles = optional(set(string))
    })))
  }))
}

