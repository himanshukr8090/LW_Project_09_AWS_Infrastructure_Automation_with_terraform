resource "aws_vpc" "myvpc" {
	cidr_block = var.AWS_VPC_CIDR
	enable_dns_support = true
	enable_dns_hostnames = true
		tags = {
				Name = "My_vpc_by_Terraform"
		}
}
