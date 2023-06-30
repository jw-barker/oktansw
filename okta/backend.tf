terraform {
  backend "azurerm" {
    storage_account_name = "<AZURE_STORAGE_ACCOUNT_NAME>"
    container_name       = "<AZURE_CONTAINER_NAME>"
    key                  = "<STATE_FILE_NAME>"
  }
}
