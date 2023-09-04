resource "aws_instance" "pibm-flask-server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.pibm_subnet.id
  availability_zone       = "ap-south-1a"
  vpc_security_group_ids = [aws_security_group.pibm_sg.id]
  associate_public_ip_address = true
  key_name     = "mcapibm"
  
}

output "public_ip" {
  value = aws_instance.pibm-flask-server.public_ip
}
