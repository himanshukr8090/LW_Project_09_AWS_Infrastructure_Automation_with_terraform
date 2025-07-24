resource "aws_internet_gateway" "mygateway" {
    vpc_id = aws_vpc.myvpc.id

    tags = {
        Name = "My_Internet_Gateway"
    }
}