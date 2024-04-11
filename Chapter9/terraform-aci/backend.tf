terraform {
  backend "azurerm" {
    resource_group_name  = "MyRgRemoteBackend"
    storage_account_name = "storageremotetfken"
    container_name       = "tfbackends"
    key                  = "demobookaci.tfstate"
    snapshot             = true
  }
}
