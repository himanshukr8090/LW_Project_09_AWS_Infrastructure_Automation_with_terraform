resource "aws_route_table_association" "myroutetable_association_subnet_1a" {
    subnet_id      = aws_subnet.public_subnet_1a.id
    route_table_id = aws_route_table.myroutingtable.id
}

resource "aws_route_table_association" "myroutetable_association_subnet_1b" {
    subnet_id      = aws_subnet.public_subnet_1b.id
    route_table_id = aws_route_table.myroutingtable.id
}

resource "aws_route_table_association" "myroutetable_association_subnet_1c" {
    subnet_id      = aws_subnet.public_subnet_1c.id
    route_table_id = aws_route_table.myroutingtable.id
}

