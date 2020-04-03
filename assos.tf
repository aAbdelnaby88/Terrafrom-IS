resource "aws_route_table_association" "public-1" {
  subnet_id      = aws_subnet.firstPublic.id
  route_table_id = aws_route_table.publicRTable.id
}

resource "aws_route_table_association" "public-2" {
subnet_id      = aws_subnet.secondPublic.id
  route_table_id = aws_route_table.publicRTable.id
}

resource "aws_route_table_association" "private-1" {
subnet_id      = aws_subnet.firstPrivate.id
  route_table_id = aws_route_table.privateRTable.id
}

resource "aws_route_table_association" "private-2" {
 subnet_id      = aws_subnet.secondPrivate.id
  route_table_id = aws_route_table.privateRTable.id
}
