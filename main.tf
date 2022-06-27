terraform {
  required_providers {
    demo = {
      source = "tfe.hashicorpdemo.net/private-provider-demo/demo"
    }
  }
}

resource "demo_animal" "demo" {
  for_each = { for animal in var.classes : animal => animal }
  class    = each.key
}