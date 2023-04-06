# creating security group
resource "aws_security_group" "sg_tf"{
    name = "sg_tf"
    description = "sg_tf inbound traffic"
    dynamic "ingress" {
        for_each = "${var.ports}"
        iterator = port
        content {
            description = "sg_tf from vpc"
            from_port = port.value
            to_port = port.value
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }
     egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    }