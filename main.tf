resource "grafana_service_account_permission" "service_account_permissions" {
  for_each = var.service_account_permissions

  service_account_id = each.value.service_account_id
  org_id             = each.value.org_id

  dynamic "permissions" {
    for_each = each.value.permissions != null ? each.value.permissions : []
    content {
      permission = permissions.value.permission
      team_id    = permissions.value.team_id
      user_id    = permissions.value.user_id
    }
  }
}

