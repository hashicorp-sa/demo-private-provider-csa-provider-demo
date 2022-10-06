terraform {
  required_providers {
    demo = {
      source = "providers.hashicorpdemo.net/private-provider-demo/demo"
    }
  }
}

provider "demo" {
  token = "tHisIsNoTAreAlTokEN"
  url = "https://pretend.api.url"
}

resource "demo_animal" "demo" {
  for_each = { for animal in var.classes : animal => animal }
  class    = each.key
}