output "o1" {
	value = "Hii.. I am Himanshu Singh Working on Terraform."
}

output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "vpc_ip_range" {
  value = aws_vpc.myvpc.cidr_block
}
output "subnet_ip_range" {
  value = aws_subnet.public_subnet_1a.cidr_block
}

output "security_group_id" {
  value = aws_security_group.lwSGWordpress.id
}

output "routing_table_id" {
  value = aws_route_table.myroutingtable.id
}
output "internet_gateway_id" {
  value = aws_internet_gateway.mygateway.id
}

output "public_ip" {
  value = aws_instance.wordpressOS.public_ip
}

output "RDS_endpoint" {
  value = aws_db_instance.wordpress_rds.endpoint
}