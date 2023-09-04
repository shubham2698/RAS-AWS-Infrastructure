resource "aws_internet_gateway" "pibm_igw" {
  vpc_id = aws_vpc.pibm_vpc.id
}