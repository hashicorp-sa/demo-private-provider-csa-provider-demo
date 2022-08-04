terraform {
  required_providers {
    demo = {
      source = "providers.hashicorpdemo.net/private-provider-demo/demo"
    }
  }
}

provider "demo" {
  token = "sdsadsdafsdafsadf"
  url = "https://demo.tfe.hashicorp.com"
}

resource "demo_animal" "demo" {
  for_each = { for animal in var.classes : animal => animal }
  class    = each.key
}