terraform {
  required_providers {
    csa = {
        source = "tfe.hashicorpdemo.net/provider-demo/demo"
        
    }
  }
}

locals {
  csa_members = [ "Bird", "Mammal", "Invertebrate", "Reptile", "Fish", "Amphibian" ]
}

resource "demo_animal" "demo" {
    for_each = { for csa_member in local.csa_members : csa_member => csa_member }
    customer_success_architect = each.key
}

output "demo_animals" {
  value = { for csa_member in local.csa_members : csa_member =>  csa_specialism.demo[csa_member].specialism }
}

output "demo_dates" {
  value = { for csa_member in local.csa_members : csa_member =>  csa_specialism.demo[csa_member].date_configured }
}