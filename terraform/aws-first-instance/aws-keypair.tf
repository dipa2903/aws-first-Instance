# creating ssh-key .
  resource "aws_key_pair" "key-terraform" {
    key_name = "key-terraform"
    public_key = file("${path.module}/id_rsa.pub")
  }