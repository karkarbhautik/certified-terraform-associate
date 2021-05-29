# Create EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "my-ec2-vm" {
  ami               = "ami-0eddb8cfbd6a5f657"
  instance_type     = "t2.micro"
  availability_zone = "me-south-1"
  #availability_zone = "us-east-1b"
  tags = {
    "Name" = "web"
    #"tag1" = "Update-test-1"    
  }
}

