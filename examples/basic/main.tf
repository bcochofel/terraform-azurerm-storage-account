provider "azurerm" {
  features {}
}

module "rg" {
  source  = "bcochofel/resource-group/azurerm"
  version = "1.4.0"

  name     = "rg-storage-basic-example"
  location = "North Europe"
}

module "st" {
  source = "../.."

  resource_group_name = module.rg.name

  name = "stexample0001"
  containers = [
    {
      name        = "scexample001"
      access_type = "private"
    },
    {
      name = "scexample002"
    }
  ]

  tags = {
    ManagedBy = "Terraform"
  }

  depends_on = [
    module.rg
  ]
}
