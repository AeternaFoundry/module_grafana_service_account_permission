output "service_account_permissions_id" {
  description = "Map of id values across all service_account_permissions, keyed the same as var.service_account_permissions except keys with no id are omitted"
  value       = { for k, v in grafana_service_account_permission.service_account_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_account_permissions_org_id" {
  description = "Map of org_id values across all service_account_permissions, keyed the same as var.service_account_permissions except keys with no org_id are omitted"
  value       = { for k, v in grafana_service_account_permission.service_account_permissions : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "service_account_permissions_permissions" {
  description = "Map of permissions values across all service_account_permissions, keyed the same as var.service_account_permissions except keys with no permissions are omitted"
  value       = { for k, v in grafana_service_account_permission.service_account_permissions : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "service_account_permissions_service_account_id" {
  description = "Map of service_account_id values across all service_account_permissions, keyed the same as var.service_account_permissions except keys with no service_account_id are omitted"
  value       = { for k, v in grafana_service_account_permission.service_account_permissions : k => v.service_account_id if v.service_account_id != null && length(v.service_account_id) > 0 }
}

