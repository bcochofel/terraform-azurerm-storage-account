# terraform-azurerm-storage-account

AzureRM Storage Account Terraform Module.

## Usage

```hcl:examples/basic/main.tf
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.20 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.41.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 2.41.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.st](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.sc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_kind"></a> [account\_kind](#input\_account\_kind) | Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2.<br>Changing this forces a new resource to be created.<br><br>**NOTES:** Changing the account\_kind value from Storage to StorageV2 will not trigger<br>a force new on the storage account, it will only upgrade the existing storage account<br>from Storage to StorageV2 keeping the existing storage account in place. | `string` | `"StorageV2"` | no |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Defines the type of replication to use for this storage account.<br>Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. | `string` | `"LRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Defines the Tier to use for this storage account.<br>Valid options are Standard and Premium.<br>For BlockBlobStorage and FileStorage accounts only Premium is valid.<br>Changing this forces a new resource to be created. | `string` | `"Standard"` | no |
| <a name="input_containers"></a> [containers](#input\_containers) | Create multiple containers.<br><br>Valid fields:<br><br>* name (required)<br>* access\_type (opcional), default. "private" | `any` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the storage account.<br>Changing this forces a new resource to be created.<br>This must be unique across the entire Azure service, not just within the resource group. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the virtual network.<br>The Resource Group must already exist. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags which should be assigned to Resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_containers"></a> [containers](#output\_containers) | Containers created. |
| <a name="output_id"></a> [id](#output\_id) | Id of the storage account created. |
| <a name="output_name"></a> [name](#output\_name) | Name of the storage account created. |
| <a name="output_tags"></a> [tags](#output\_tags) | Storage Account tags. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Run tests

```bash
cd test/
go test -v
```

## pre-commit hooks

This repository uses [pre-commit](https://pre-commit.com/).

To install execute:

```bash
pre-commit install --install-hooks -t commit-msg
```

To run the hooks you need to install:

* [terraform](https://github.com/hashicorp/terraform)
* [terraform-docs](https://github.com/terraform-docs/terraform-docs)
* [TFLint](https://github.com/terraform-linters/tflint)
* [TFSec](https://github.com/tfsec/tfsec)
* [checkov](https://github.com/bridgecrewio/checkov)

## References
