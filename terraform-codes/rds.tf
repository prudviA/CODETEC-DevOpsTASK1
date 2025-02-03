resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine              = "mysql"
  instance_class      = "db.t3.micro"
  db_name             = "mydatabase"
  username           = "admin"
  password           = "password123"
  publicly_accessible = false
  vpc_security_group_ids = [aws_security_group.db_sg.id]
}

