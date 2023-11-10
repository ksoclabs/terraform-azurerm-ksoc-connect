resource "azurerm_role_definition" "ksoc" {
  name        = var.ksoc_role_name
  scope       = data.azurerm_subscription.primary.id
  description = "Allow KSOC read access to your cloud account"

  permissions {
    actions = [
      "Microsoft.ContainerService/managedClusters/upgradeProfiles/read",
      "Microsoft.ContainerService/managedClusters/read",
      "Microsoft.ContainerService/managedClusters/listClusterUserCredential/action",
    ]
    not_actions = []
  }
}

resource "azurerm_role_assignment" "ksoc" {
  scope              = data.azurerm_subscription.primary.id
  role_definition_id = azurerm_role_definition.ksoc.role_definition_resource_id
  principal_id       = azuread_service_principal.ksoc.object_id
}
