variable "sentinel_alert_rule_lookup" {
  description = <<EOT
Map of sentinel_alert_rule_lookup, attributes below
Required:
    - log_analytics_workspace_id
    - name
EOT

  type = map(object({
    log_analytics_workspace_id = string
    name                       = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_lookup : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

