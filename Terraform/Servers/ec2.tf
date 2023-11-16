# Create a ec2 instance to be used as a webserver
resource "aws_instance" "web" {
  ami           = "ami-0d70546e43a941d70"
  instance_type = "t2.micro"

  # Install Apache and SSM
  user_data = <<-EOL
  #!/bin/bash
  echo "*** Installing apache2"
  sudo apt update -y
  sudo apt install apache2 -y
  echo "*** Completed Installing apache2"
  EOL

  tags = {
    Name = "ec2WebServer"
  }
}