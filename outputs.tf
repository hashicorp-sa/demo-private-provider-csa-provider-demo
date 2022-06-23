output "demo_animals" {
  description = "Outputs of provider demo"
  value = { for animal in var.classes : animal => {
    animal          = demo_animal.demo[animal].animal
    date_configured = demo_animal.demo[animal].date_configured
    }
  }
}