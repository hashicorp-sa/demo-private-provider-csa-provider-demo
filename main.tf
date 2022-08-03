terraform {
  required_providers {
    demo = {
      source = "tfe.hashicorpdemo.net/private-provider-demo/demo"
    }
  }
  experiments = [module_variable_optional_attrs]
}

resource "demo_animal" "demo" {
  for_each = { for animal in var.classes : animal => animal }
  class    = each.key
}