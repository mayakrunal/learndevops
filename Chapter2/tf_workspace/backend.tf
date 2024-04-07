terraform {
  backend "azurerm" {
    resource_group_name  = "MyRgRemoteBackend"
    storage_account_name = "storageremotetfken"
    container_name       = "tfbackends"
    key                  = "myappli.tfstate"
    snapshot             = true
  }
}
