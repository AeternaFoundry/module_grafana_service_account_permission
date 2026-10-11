variable "service_account_permissions" {
  description = <<EOT
Map of service_account_permissions, attributes below
Required:
    - service_account_id
Optional:
    - org_id
    - permissions (block):
        - permission (required)
        - team_id (optional)
        - user_id (optional)
EOT

  type = map(object({
    service_account_id = string
    org_id             = optional(string)
    permissions = optional(list(object({
      permission = string
      team_id    = optional(string)
      user_id    = optional(string)
    })))
  }))
}

