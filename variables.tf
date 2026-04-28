variable "dynamo_table_name" {
    type = string
    default = "my-multi-env-tws-dynamodb-table"
    description = "This is table name for Dynamodb"
  
}
variable "ami_id" {
    type = string
    default = "ami-05d2d839d4f73aafb"   # Canonical, Ubuntu, 24.04, amd64
    description = "This is the AMI ID for the EC2 instance (Ubuntu) "
  
}