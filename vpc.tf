resource "aws_vpc" "main_vpc" {
  cidr_block = "192.168.0.0/16"
  tags = { Name = "MainVPC" }
}

resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.main_vpc.id
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "192.168.1.0/24"
  map_public_ip_on_launch = true
}
