# S3 bucket
# Resource Block  Added it parameters ("aws_s3_bucket" "my-bucket") and rest is arguments 
resource "aws_s3_bucket" "my-bucket" {  # added the ref name to this bucket 
     #args
     
    bucket = "${var.my_env}-my-multi-env-tws-bucket"  
    # var.my-env → refers to a Terraform variable
    #${...} → tells Terraform to insert the variable value into the string
    tags = {
      Name = "${var.my_env}-my-multi-env-tws-bucket"
      environment = var.my_env
    }
  
}