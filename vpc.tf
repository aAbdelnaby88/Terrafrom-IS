resource "aws_vpc" "abdo" {

  cidr_block = "10.0.0.0/16"
  tags= {
      name = "abdo"
  }
}

resource "aws_internet_gateway" "gWay" {
  vpc_id = aws_vpc.abdo.id

  tags = {
    Name = "main"
  }
}
