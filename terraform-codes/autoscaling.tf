resource "aws_launch_configuration" "app_lc" {
  name          = "app-launch-config"
  image_id      = "ami-0c55b159cbfafe1f0"  # Use an appropriate AMI
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "app_asg" {
  launch_configuration = aws_launch_configuration.app_lc.id
  min_size             = 2
  max_size             = 5
  desired_capacity     = 2
  vpc_zone_identifier  = [aws_subnet.private_subnet.id]
}

