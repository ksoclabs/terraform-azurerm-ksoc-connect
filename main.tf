data "azurerm_subscription" "primary" {}

resource "azuread_app_role_assignment" "ksoc" {
  app_role_id = "00000000-0000-0000-0000-000000000000"
  principal_object_id = azuread_service_principal.ksoc.object_id
  resource_object_id  = azuread_service_principal.ksoc.object_id
}


resource "azuread_service_principal" "ksoc" {
  application_id               = var.ksoc_app_id
  app_role_assignment_required = true

  feature_tags {
    enterprise = true
    gallery    = true
  }
}

resource "ksoc_azure_register" "this" {
  subscription_id = split("/", data.azurerm_subscription.primary.id)[2]
  tenant_id       = data.azurerm_subscription.primary.tenant_id
  
  depends_on = [
    azurerm_role_assignment.ksoc
  ]
}
