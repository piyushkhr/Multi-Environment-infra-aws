module "dev-app" {
    source = "./aws_infra"
    my_env = "dev"
    instance_type = "t3.micro"
    ami_id = "ami-07a00cf47dbbc844c" # Canonical, Ubuntu, 24.04, amd64 noble image
    instance_count = 1
    
  
}
module "staging-app" {
    source = "./aws_infra"
    my_env = "staging"
    instance_type = "t3.micro"
    ami_id = "ami-07a00cf47dbbc844c" # Canonical, Ubuntu, 24.04, amd64 noble image
    instance_count = 1
    
  
}
module "production-app" {
    source = "./aws_infra"
    my_env = "production"
    instance_type = "c7i-flex.large"
    ami_id = "ami-07a00cf47dbbc844c" # Canonical, Ubuntu, 24.04, amd64 noble image
    instance_count = 3
   

  
}