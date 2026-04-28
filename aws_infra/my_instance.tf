# EC2 Instance


resource "aws_instance" "myinstance" {
    count = var.instance_count # number of instances to create
    ami = var.ami_id  # Canonical, Ubuntu, 24.04, amd64 noble image
   instance_type = var.instance_type # free tier eligible instance type
    /*key_name = aws_key_pair.deployer-key.key_name # interpolation to get the key name from the key pair resource
    security_groups = [aws_security_group.mysecurity.name] # interpolation to get the security group name from the security group resource
    */
    tags = {
        Name = "${var.my_env}-my-multi-env-instance"
}
}