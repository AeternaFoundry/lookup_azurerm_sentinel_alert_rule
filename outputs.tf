output "sentinel_alert_rule_lookup_id" {
  description = "Map of id values across all sentinel_alert_rule_lookup, keyed the same as var.sentinel_alert_rule_lookup"
  value       = { for k, v in data.azurerm_sentinel_alert_rule.sentinel_alert_rule_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sentinel_alert_rule_lookup_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all sentinel_alert_rule_lookup, keyed the same as var.sentinel_alert_rule_lookup"
  value       = { for k, v in data.azurerm_sentinel_alert_rule.sentinel_alert_rule_lookup : k => v.log_analytics_workspace_id if v.log_analytics_workspace_id != null && length(v.log_analytics_workspace_id) > 0 }
}
output "sentinel_alert_rule_lookup_name" {
  description = "Map of name values across all sentinel_alert_rule_lookup, keyed the same as var.sentinel_alert_rule_lookup"
  value       = { for k, v in data.azurerm_sentinel_alert_rule.sentinel_alert_rule_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}

