resource "aws_route_table" "public_rt_a" {
  vpc_id = aws_vpc.pibm_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.pibm_igw.id
  }
}

resource "aws_route_table_association" "public_a" {
  subnet_id      = aws_subnet.pibm_subnet.id
  route_table_id = aws_route_table.public_rt_a.id
}