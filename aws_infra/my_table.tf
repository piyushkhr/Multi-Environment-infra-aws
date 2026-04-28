# Dyanamo DB Table
resource "aws_dynamodb_table" "name" {
  name= "${var.my_env}-my-multi-env-tws-table"
  billing_mode = "PAY_PER_REQUEST" # on demand billing mode
  hash_key = "id" # primary key attribute name  
  attribute {
    name = "id" # primary key attribute name
    type = "S" # string data type
  }
}