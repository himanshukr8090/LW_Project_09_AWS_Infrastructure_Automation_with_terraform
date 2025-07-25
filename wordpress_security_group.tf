resource "aws_security_group" "lwSGWordpress" {
  name        = "lwSGWordpressTF"
  description = "Allow inbound traffic only for HTTP and all outbound traffic for all"
  vpc_id      = aws_vpc.myvpc.id

  tags = {
    Name = "lw SG Wordpress TF"
  }
}

resource "aws_vpc_security_group_ingress_rule" "WP_allow_http_ipv4_for_all" {
  security_group_id = aws_security_group.lwSGWordpress.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "WP_allow_ssh_ipv4_for_all" {
  security_group_id = aws_security_group.lwSGWordpress.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.lwSGWordpress.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

