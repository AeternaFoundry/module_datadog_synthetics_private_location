output "synthetics_private_locations_id" {
  description = "Map of id values across all synthetics_private_locations, keyed the same as var.synthetics_private_locations except keys with no id are omitted"
  value       = { for k, v in datadog_synthetics_private_location.synthetics_private_locations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synthetics_private_locations_api_key" {
  description = "Map of api_key values across all synthetics_private_locations, keyed the same as var.synthetics_private_locations except keys with no api_key are omitted"
  value       = { for k, v in datadog_synthetics_private_location.synthetics_private_locations : k => v.api_key if v.api_key != null && length(v.api_key) > 0 }
  sensitive   = true
}
output "synthetics_private_locations_config" {
  description = "Map of config values across all synthetics_private_locations, keyed the same as var.synthetics_private_locations except keys with no config are omitted"
  value       = { for k, v in datadog_synthetics_private_location.synthetics_private_locations : k => v.config if v.config != null && length(v.config) > 0 }
  sensitive   = true
}
output "synthetics_private_locations_description" {
  description = "Map of description values across all synthetics_private_locations, keyed the same as var.synthetics_private_locations except keys with no description are omitted"
  value       = { for k, v in datadog_synthetics_private_location.synthetics_private_locations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "synthetics_private_locations_metadata" {
  description = "Map of metadata values across all synthetics_private_locations, keyed the same as var.synthetics_private_locations except keys with no metadata are omitted"
  value       = { for k, v in datadog_synthetics_private_location.synthetics_private_locations : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "synthetics_private_locations_name" {
  description = "Map of name values across all synthetics_private_locations, keyed the same as var.synthetics_private_locations except keys with no name are omitted"
  value       = { for k, v in datadog_synthetics_private_location.synthetics_private_locations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synthetics_private_locations_restriction_policy_resource_id" {
  description = "Map of restriction_policy_resource_id values across all synthetics_private_locations, keyed the same as var.synthetics_private_locations except keys with no restriction_policy_resource_id are omitted"
  value       = { for k, v in datadog_synthetics_private_location.synthetics_private_locations : k => v.restriction_policy_resource_id if v.restriction_policy_resource_id != null && length(v.restriction_policy_resource_id) > 0 }
}
output "synthetics_private_locations_tags" {
  description = "Map of tags values across all synthetics_private_locations, keyed the same as var.synthetics_private_locations except keys with no tags are omitted"
  value       = { for k, v in datadog_synthetics_private_location.synthetics_private_locations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

