variable "my_env" {
    description = "This is the Environment"
    type = string
  
}
variable "ami_id" {
    description = "This  AMI ID for Ec2 instance"
    type = string
  
}
variable "instance_type" {
    description = "This is the instance type for Ec2 instance"
    type = string
  
}
variable "instance_count" {
    description = "This is the instance count for Ec2 instance"
    type = number
  
}
