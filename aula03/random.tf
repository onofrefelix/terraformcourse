
#Ajuda a definir um nome aleatorio para o bucket
resource "random_pet" "bucket" {
  length = 5
}