resource "aws_instance" "server"{
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
key_name = "${aws_key_pair.key-terraform.key_name}"
vpc_security_group_ids = ["${aws_security_group.sg_tf.id}"]
user_data = "${file("ec2-user-data.sh")}"

 
tags = {
    Name = "terraforminstance"
  }
 }
