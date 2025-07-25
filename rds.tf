resource "aws_db_instance" "wordpress_rds" {
    allocated_storage    = 10
    db_name              = "mywordpressdb"
    engine               = "mysql"
    engine_version       = "8.0.35"
    instance_class       = "db.t3.micro"
    username             = "admin"
    password             = "Redhat123"
    vpc_security_group_ids = [ aws_security_group.rds_security_group_TF.id ]
    db_subnet_group_name = "rds_subnet_group"
    parameter_group_name = "default.mysql8.0"
    skip_final_snapshot  = true
}