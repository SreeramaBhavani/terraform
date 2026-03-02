resource "local_file" "my-pet"{
    filename = "pets.txt"
    content = "I love pets!"
}
resource "random_pet" "New-pet" {
    prefix = "Hello"
    separator = "."
    length = "1"
}