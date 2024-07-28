resource "azurerm_storage_account" "Infra-strg" {
    for_each = var.Infrastrg
    name = each.value.strg_name
    resource_group_name = each.value.rg_name
    location = each.value.location
    account_tier = each.value.account_tier_name
    account_replication_type = each.value.account_rep_name
}