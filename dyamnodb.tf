resource "aws_dynamodb_table" "name" {
  name= var.dynamo_table_name
  billing_mode = "PAY_PER_REQUEST" # on demand billing mode
  hash_key = "id" # primary key attribute name  
  attribute {
    name = "id" # primary key attribute name
    type = "S" # string data type
  }
}