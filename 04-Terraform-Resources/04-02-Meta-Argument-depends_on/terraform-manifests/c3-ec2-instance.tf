# Resource-8: Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami                    = "ami-0eddb8cfbd6a5f657" # Ubuntu Linux
  instance_type          = "t3.micro"
  key_name               = "sample-key"
  subnet_id              = aws_subnet.vpc-dev-public-subnet-1.id
  vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
  #user_data = file("apache-install.sh")
  user_data = <<-EOF
    #!/bin/bash
    sudo apt upgrade -y
    sudo apt update -y
    sudo apt install apache2 -y
    sudo /etc/init.d/apache2 restart
    sudo systemctl enable apache2
    sudo a2enmod rewrite
    sudo apt install mysql-server -y
    sudo apt install php7.4 libapache2-mod-php7.4 php7.4-mysql php-common php7.4-cli php7.4-common php7.4-json php7.4-opcache php7.4-readline libapache2-mod-php php-mysql php-curl php-gd php-json php-zip php-mbstring -y
    echo "<h1>Welcome to StackSimplify ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    EOF
  tags = {
    "Name" = "myec2vm"
  }    
}



