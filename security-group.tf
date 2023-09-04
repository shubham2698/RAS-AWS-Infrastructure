resource "aws_security_group" "pibm_sg" {
  name        = "pibm-security-group"
  description = "Security group for PIBM Flask server"
  vpc_id      = aws_vpc.pibm_vpc.id
}

# Define ingress rule for the security group
resource "aws_security_group_rule" "pibm_sg_ingress_http" {
  security_group_id = aws_security_group.pibm_sg.id
  type        = "ingress"
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "pibm_sg_ingress_ssh" {
  security_group_id = aws_security_group.pibm_sg.id
  type        = "ingress"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "pibm_sg_ingress_flask_app" {
  security_group_id = aws_security_group.pibm_sg.id
  type        = "ingress"
  from_port   = 8080
  to_port     = 8080
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "pibm_sg_ingress_flask_app_https" {
  security_group_id = aws_security_group.pibm_sg.id
  type        = "ingress"
  from_port   = 443
  to_port     = 443
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "pibm_sg_egress_flask_app_https" {
  security_group_id = aws_security_group.pibm_sg.id
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}