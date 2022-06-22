terraform {
  required_providers {
    demo = {
        source = "tfe.hashicorpdemo.net/provider-demo/demo"
        
    }
  }
}

locals {
  animals = [ "Bird", "Mammal", "Invertebrate", "Reptile", "Fish", "Amphibian" ]
}

resource "demo_animal" "demo" {
    for_each = { for animal in local.animals : animal => animal }
    class = each.key
}

output "demo_animals" {
  value = { for animal in local.animals : animal =>  demo_animal.demo[animal].animal }
}

output "demo_dates" {
  value = { for animal in local.animals : animal =>  demo_animal.demo[animal].date_configured }
}