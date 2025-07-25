resource "aws_security_group" "rds_security_group_TF" {
    name        = "rds_security_group_TF"
    description = "Allow inbound traffic only for HTTP and all outbound traffic for all"
    vpc_id      = aws_vpc.myvpc.id

    tags = {
        Name = "lw SG RDS TF"
    }
}

resource "aws_vpc_security_group_ingress_rule" "MSQL_allow_http_ipv4_for_all" {
    security_group_id = aws_security_group.rds_security_group_TF.id
    cidr_ipv4         = "0.0.0.0/0"
    from_port         = 3306
    ip_protocol       = "tcp"
    to_port           = 3306
}

resource "aws_vpc_security_group_egress_rule" "RDS_allow_all_traffic_ipv4" {
    security_group_id = aws_security_group.rds_security_group_TF.id
    cidr_ipv4         = "0.0.0.0/0"
    ip_protocol       = "-1" # semantically equivalent to all ports
}

