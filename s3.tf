# Resource Block  Added it parameters ("aws_s3_bucket" "my-bucket") and rest is arguments 
resource "aws_s3_bucket" "my-bucket" {  # added the ref name to this bucket 
     #args
    bucket = "my-multi-env-tws-bucket"
    tags = {
      Name = "my-multi-env-tws-bucket"
    }
  
}