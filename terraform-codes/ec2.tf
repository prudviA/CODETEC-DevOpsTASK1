resource "aws_instance" "app_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Change this to a valid AMI
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet.id
  security_groups = [aws_security_group.app_sg.id]
}

