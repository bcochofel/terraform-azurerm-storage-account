variable "resource_group_name" {
  description = <<EOT
The name of the resource group in which to create the virtual network.
The Resource Group must already exist.
EOT
  type        = string
}

variable "name" {
  description = <<EOD
Specifies the name of the storage account.
Changing this forces a new resource to be created.
This must be unique across the entire Azure service, not just within the resource group.
EOD
  type        = string
}

variable "account_kind" {
  description = <<EOD
Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2.
Changing this forces a new resource to be created.

**NOTES:** Changing the account_kind value from Storage to StorageV2 will not trigger
a force new on the storage account, it will only upgrade the existing storage account
from Storage to StorageV2 keeping the existing storage account in place.
EOD
  type        = string
  default     = "StorageV2"
}

variable "account_tier" {
  description = <<EOD
Defines the Tier to use for this storage account.
Valid options are Standard and Premium.
For BlockBlobStorage and FileStorage accounts only Premium is valid.
Changing this forces a new resource to be created.
EOD
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = <<EOD
Defines the type of replication to use for this storage account.
Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS.
EOD
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "A mapping of tags which should be assigned to Resources."
  type        = map(string)
  default     = {}
}

variable "containers" {
  description = <<EOT
Create multiple containers.

Valid fields:

* name (required)
* access_type (opcional), default. "private"
EOT
  type        = any
  default     = []
}
