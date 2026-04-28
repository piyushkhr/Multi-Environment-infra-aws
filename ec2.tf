# key Pair 

resource "aws_key_pair" "deployer-key" {
    key_name = "my-key-pair-multi-env-tws"
    public_key = file("E:/Ethans/Projects/TrainwithShubham_DevopsBootcamp/Multi-Environment-infra-terraform/terra-milenv-key.pub")
  
}

# VPC Congiguration - default

resource "aws_default_vpc" "vpc-default" {
  
}

# Security Group Configuration

resource "aws_security_group" "mysecurity" {
    name = "allow-ssh"
    description = "Allow SSH inbound traffic for Ec2 Instance"
    vpc_id = aws_default_vpc.vpc-default.id   # interpolation to get the default vpc id 

    #incoming traffic rule
   ingress {
    description = "Allow SSH inbound traffic for Ec2 Instance"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # allow from anywhere
   } 

    #outgoing traffic rule
   egress {
    description = "Allow all outbound traffic for Ec2 Instance"
    from_port = 0
    to_port = 0
    protocol = "-1" # all protocols
    cidr_blocks = ["0.0.0.0/0"]
   }
   
}

resource "aws_instance" "myinstance" {
    ami = var.ami_id  # Canonical, Ubuntu, 24.04, amd64 noble image
   instance_type = "t3.micro"  # free tier eligible instance type
    key_name = aws_key_pair.deployer-key.key_name # interpolation to get the key name from the key pair resource
    security_groups = [aws_security_group.mysecurity.name] # interpolation to get the security group name from the security group resource
    tags = {
        Name = "my-multi-env-instance"
}
}