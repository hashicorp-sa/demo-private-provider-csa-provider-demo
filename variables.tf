variable "classes" {
  type        = list(string)
  default     = ["Bird", "Mammal", "Invertebrate", "Reptile", "Fish", "Amphibian"]
  description = "List of classes to use in the demo"
}