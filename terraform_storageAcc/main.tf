provider "azurerm" {
  features {}
}

#create a resource group 

resource "azurerm_resource_group" "resource_group" {
  name     = "rg-terraform-demo"
  location = "eastus"
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  account_kind             = "StorageV2"

  static_website {
    index_document = "index.html"
  }

}

#Add a index.html file

resource "azurerm_storage_blob" "blob" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source_content         = "<h1> WELCOME TO MY WEBSITE <h1>"
}






















