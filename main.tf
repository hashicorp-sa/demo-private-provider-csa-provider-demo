terraform {
  required_providers {
    csa = {
        source = "tfe.hashicorpdemo.net/provider-demo/csa"
    }
  }
}

locals {
  csa_members = [ "Jared Holgate", "Jan Repnak", "Colin Turney" ]
}

resource "csa_specialism" "demo" {
    for_each = { for csa_member in local.csa_members : csa_member => csa_member }
    customer_success_architect = each.key
}

output "csa_specialisms" {
  value = { for csa_member in local.csa_members : csa_member =>  csa_specialism.demo[csa_member].specialism }
}

output "csa_dates" {
  value = { for csa_member in local.csa_members : csa_member =>  csa_specialism.demo[csa_member].date_configured }
}