# terraform-azurerm-ksoc-connect

Allows KSOC to connect to your Azure accounts to allow for AKS cluster discovery.

## Terraform Registry

This module is available in the [Terraform Registry](https://registry.terraform.io/) see [here](https://registry.terraform.io/modules/ksoclabs/ksoc-connect/azurerm/latest).

## Contributing

The most important thing to be aware of when contributing is that we leverage the [Semantic Release Action](https://github.com/cycjimmy/semantic-release-action) to automate our changelog, see [here](CHANGELOG.md).

This requires us to use [conventional git commits](https://www.conventionalcommits.org/en/v1.0.0/) when committing to this repository.

Each PR merge into the `main` branch will execute the release process defined [here](.github/workflows/release.yml).

## Usage

During the sign-up process, you will need to execute this module to allow KSOC to discovery AKS clusters and perform monitoring.

Use the following to configure the Azure Terraform provider:

```terraform
provider "azuread" {
  tenant_id = "YOUR_AZURE_TENANT_ID"
}

provider "azurerm" {
  features {}
  client_id       = "YOUR_AZURE_CLIENT_ID"
  subscription_id = "YOUR_AZURE_SUBSCRIPTION_ID"
  tenant_id       = "YOUR_AZURE_TENANT_ID"
}

provider "ksoc" {
    access_key_id = "KSOC_ACCESS_KEY"
    secret_key    = "KSOC_SECRET_KEY"
}
```

``` terraform
module "ksoc-connect" {
  source  = "ksoclabs/ksoc-connect/azurerm"
  version = "<version>"
}
```

Once applied, KSOC will start synchronizing your resources with KSOC.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.8 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | 2.38.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.54.0 |
| <a name="requirement_ksoc"></a> [ksoc](#requirement\_ksoc) | >= 0.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 2.38.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.54.0 |
| <a name="provider_ksoc"></a> [ksoc](#provider\_ksoc) | >= 0.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_app_role_assignment.ksoc](https://registry.terraform.io/providers/hashicorp/azuread/2.38.0/docs/resources/app_role_assignment) | resource |
| [azuread_service_principal.ksoc](https://registry.terraform.io/providers/hashicorp/azuread/2.38.0/docs/resources/service_principal) | resource |
| [azurerm_role_assignment.ksoc](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/resources/role_assignment) | resource |
| [azurerm_role_definition.ksoc](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/resources/role_definition) | resource |
| [ksoc_azure_register.this](https://registry.terraform.io/providers/ksoclabs/ksoc/latest/docs/resources/azure_register) | resource |
| [azurerm_subscription.primary](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ksoc_app_id"></a> [ksoc\_app\_id](#input\_ksoc\_app\_id) | The ID of the KSOC Azure application. | `string` | `"4ba48a95-c5da-41d1-897a-57bdf7e34e5b"` | no |
| <a name="input_ksoc_role_name"></a> [ksoc\_role\_name](#input\_ksoc\_role\_name) | Name of custom role to assume | `string` | `"ksoc-connect"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License
Apache 2 Licensed. See [LICENSE](LICENSE) for full details.
