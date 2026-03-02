resource "local_file" "my-pet"{
    filename = var.filename
    content = var.content
}
output "pet_name" {
  value = random_pet.New-pet.id
}
resource "random_pet" "New-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}