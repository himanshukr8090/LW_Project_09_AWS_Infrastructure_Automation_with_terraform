resource "aws_instance" "wordpressOS" {
    # ami = "ami-0a1235697f4afa8a4"
    ami = "ami-0382ffa63b15fc163"
    instance_type = "t2.micro"
    key_name = "LW-Projects"
    vpc_security_group_ids = [aws_security_group.lwSGWordpress.id]
    subnet_id = aws_subnet.public_subnet_1a.id

    tags = {
        Name = "Wordpress_Server_01"
    }
}


resource "null_resource" "remort_login" {
    provisioner "remote-exec" {
            inline = [
                    "sudo yum install httpd -y",
                    "sudo yum install git -y",
                    "sudo amazon-linux-extras install -y mariadb10.5 php8.2",
                    "sudo git clone https://github.com/WordPress/WordPress.git",
                    "sudo mv WordPress/*  /var/www/html/",
                    "sudo chown -R apache  /var/www/html/",
                    "sudo systemctl restart httpd"
                    ]
    }

    connection {
        type     = "ssh"
        user     = "ec2-user"
        private_key = file("c:/Users/hp/LW-Projects.pem")
        host     = aws_instance.wordpressOS.public_ip
    }
}


