resource "azurerm_resource_group" "infra-rg" {
    for_each = var.Infrarg
    name = each.value.rg_name
    location = each.value.location
}