>=========================================================>

For new AWS accounts (created after July 15, 2025), free tier eligible instance types include t3.micro, t3.small, t4g.micro, t4g.small, c7i-flex.large, and m7i-flex.large

.===============================================================.




------------------------------------------------------------

Creating an EC2 instance in Amazon Web Services isn’t just about the instance itself—there are several supporting resources working behind the scenes. In interviews, this is exactly what they expect you to explain clearly.

🏗️ Core Supporting Resources for EC2
🌐 1. VPC (Virtual Private Cloud)


A logically isolated network where your EC2 runs


Every EC2 instance must be inside a VPC


If you don’t specify → default VPC is used


👉 Think of VPC as your private data center in AWS

📍 2. Subnet


A subdivision of the VPC


Defines where your EC2 is placed (AZ level)


Types:


Public Subnet → Internet access


Private Subnet → No direct internet



🌍 3. Internet Gateway (IGW)


Enables communication between VPC and internet


Required if EC2 needs public access (SSH, web traffic)



🛣️ 4. Route Table


Controls traffic routing inside VPC


Example:


0.0.0.0/0 → IGW → allows internet access


Without proper route → EC2 won’t be reachable even if public

🔐 5. Security Group (VERY IMPORTANT)


Acts like a firewall at instance level


Example rules:


Allow SSH → Port 22


Allow HTTP → Port 80


👉 Stateful (response traffic automatically allowed)

🚧 6. Network ACL (NACL)


Works at subnet level


Stateless firewall


👉 Usually default is enough unless strict control needed

🔑 7. Key Pair


Used for secure login (SSH)


Types:


.pem → Linux


.ppk → Windows


Without key pair → you cannot access EC2

🖥️ 8. AMI (Amazon Machine Image)


Pre-configured OS template


Examples:


Amazon Linux


Ubuntu


Windows Server


👉 Defines:


OS


Installed software


Storage config



💾 9. EBS (Elastic Block Store)


Storage attached to EC2


Types:


Root volume (OS)


Additional volumes


👉 Persistent storage (data survives restart)

🌍 10. Elastic IP (Optional)


Static public IP address


👉 Useful when:


You want fixed IP for server (e.g., production app)



📊 11. IAM Role (Highly Recommended)


Allows EC2 to access AWS services securely


Example:


Access S3


Access CloudWatch


👉 Avoid hardcoding credentials inside instance

📈 12. CloudWatch (Monitoring)


Tracks:


CPU usage


Memory (via agent)


Logs




>> Helps in alerting & troubleshooting


***************************************

🔄 How Everything Connects (Simple Flow)
VPC 
    └── Subnet      
        └── EC2 Instance            
            ├── Security Group            
            ├── Key Pair            
            ├── AMI            
            ├── EBS Volume            
            └── IAM Role

   *****************************************         
For internet access:
EC2 → Subnet → Route Table → Internet Gateway → Internet

-----------------------------------------------------------------------