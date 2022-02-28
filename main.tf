resource "azuread_app_role_assignment" "ksoc" {
  app_role_id         = var.ksoc_app_role_id
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
