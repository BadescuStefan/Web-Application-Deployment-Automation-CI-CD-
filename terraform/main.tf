provider "azurerm" {
    features = {}
}

#My resource group is ResourceGroup2
data "azurerm_resource_group" "existing_rg" {
  name = "ResourceGroup2" 
}

#Service plan for AppService
resource "azurerm_app_service_plan" "asp" [
  name			= "asp-web-app-cicd"
  location		= data.azurerm_resource_group.existing_rg.location
  resource_group_name	= data.azurerm_resource_group.existing_rg.name
sku {
    tier = "Free"
    size = "F1"
  }
}
#AppService creation
name                = "webapp-cicd"
  location            = data.azurerm_resource_group.existing_rg.location
  resource_group_name = data.azurerm_resource_group.existing_rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  site_config {
    linux_fx_version = "DOCKER|<image_name>"
  }
}
