resource "azurerm_resource_group" "acidemobookken" {
  name     = "acidemobookken"
  location = "eastus"
}
resource "azurerm_container_group" "aci-app-demobook" {
  name                = "aci-app-demobook"
  location            = azurerm_resource_group.acidemobookken.location
  resource_group_name = azurerm_resource_group.acidemobookken.name
  ip_address_type     = "Public"
  dns_name_label      = "demobook-ken"
  os_type             = "Linux"

  container {
    name   = "demobook-ken"
    image  = "docker.io/${var.dockerhub-username}/demobook:${var.imageversion}"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 443
      protocol = "TCP"
    }
  }

  tags = {
    environment = "testing"
  }
}
