output "persistent_volumes_id" {
  description = "Map of id values across all persistent_volumes, keyed the same as var.persistent_volumes except keys with no id are omitted"
  value       = { for k, v in kubernetes_persistent_volume.persistent_volumes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "persistent_volumes_metadata" {
  description = "Map of metadata values across all persistent_volumes, keyed the same as var.persistent_volumes except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_persistent_volume.persistent_volumes : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "persistent_volumes_spec" {
  description = "Map of spec values across all persistent_volumes, keyed the same as var.persistent_volumes except keys with no spec are omitted"
  value       = { for k, v in kubernetes_persistent_volume.persistent_volumes : k => v.spec if v.spec != null && length(v.spec) > 0 }
}

