data "azurerm_sentinel_alert_rule" "sentinel_alert_rule_lookup" {
  for_each = var.sentinel_alert_rule_lookup

  log_analytics_workspace_id = each.value.log_analytics_workspace_id
  name                       = each.value.name
}

