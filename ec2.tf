data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "web_1" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = var.web_instance_type
  subnet_id              = aws_subnet.public_1.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data              = file("${path.module}/user_data_web.sh")
}

resource "aws_instance" "web_2" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = var.web_instance_type
  subnet_id              = aws_subnet.public_2.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data              = file("${path.module}/user_data_web.sh")
}