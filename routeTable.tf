resource "aws_route_table" "publicRTable" {
  vpc_id = aws_vpc.abdo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gWay.id
  }

  tags = {
    Name = "publicRTable"
  }
}

resource "aws_route_table" "privateRTable" {
  vpc_id = aws_vpc.abdo.id
  route {
    cidr_block = "10.0.0.0/16"
  }
  tags = {
    Name = "privateRTable"
  }
}