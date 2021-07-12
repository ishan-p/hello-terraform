resource "aws_instance" "bastion_subnet1" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.instance_key.id
  subnet_id              = var.public_subnet1_id
  vpc_security_group_ids = [var.default_security_group_id]

  tags = {
    Name = "bastion-1"
  }
}

resource "aws_instance" "bastion_subnet2" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.instance_key.id
  subnet_id              = var.public_subnet2_id
  vpc_security_group_ids = [var.default_security_group_id]

  tags = {
    Name = "bastion-2"
  }
}