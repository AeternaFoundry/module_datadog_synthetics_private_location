resource "datadog_synthetics_private_location" "synthetics_private_locations" {
  for_each = var.synthetics_private_locations

  name        = each.value.name
  api_key     = each.value.api_key
  description = each.value.description
  tags        = each.value.tags

  dynamic "metadata" {
    for_each = each.value.metadata != null ? each.value.metadata : []
    content {
      restricted_roles = metadata.value.restricted_roles
    }
  }
}

