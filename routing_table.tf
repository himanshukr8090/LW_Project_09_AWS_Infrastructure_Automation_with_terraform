resource "aws_route_table" "myroutingtable" {
    vpc_id = aws_vpc.myvpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.mygateway.id
    }

    tags = {
        Name = "My_Routing_Table"
    }
}