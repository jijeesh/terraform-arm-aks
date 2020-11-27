

resource "azurerm_resource_group" "main" {
  name     = "${var.name}-rg"
  location = "East US"
}

resource "azurerm_template_deployment" "main" {
  name                = "${var.name}-ARM"
  resource_group_name = "${azurerm_resource_group.main.name}"

  template_body = "${file("environment.json")}"

  # parameters {
  #   "myList" = "${join(",", var.myList)}"
  # }

  deployment_mode = "Incremental"
}

