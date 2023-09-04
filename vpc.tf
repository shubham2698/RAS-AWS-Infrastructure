resource "aws_vpc" "pibm_vpc" {
  cidr_block            = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "pibm_subnet" {
  vpc_id                  = aws_vpc.pibm_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
}

resource "aws_default_route_table" "r" {
  default_route_table_id = aws_vpc.pibm_vpc.default_route_table_id

}