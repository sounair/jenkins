provider "azurerm" {


  subscription_id = "${var.sid}"
  client_id       = "${var.cid}"
  client_secret   = ${SECRET_FILE_ID}
  tenant_id       = "${var.tenantid}"
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "${var.name}-resource"
  location = "${var.location}"
}
