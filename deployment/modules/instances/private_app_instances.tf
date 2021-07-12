resource "aws_instance" "app_private_instance1_subnet1" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.instance_key.id
  subnet_id              = var.private_subnet1_id
  vpc_security_group_ids = [var.private_security_group_id]

  tags = {
    Name = "app-private-instance1-sub1"
  }

  # provisioner "remote-exec" {
  #   inline = [
  #     "sudo apt -y update",
  #     "sudo apt install -y nginx"
  #   ]

  #   connection {
  #     type        = "ssh"
  #     user        = "ubuntu"
  #     private_key = file("${path.root}/.ssh/terra_rsa")
  #     host        = "${self.public_ip}"
  #   }
  # }
}

resource "aws_instance" "app_private_instance2_subnet1" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.instance_key.id
  subnet_id              = var.private_subnet1_id
  vpc_security_group_ids = [var.private_security_group_id]

  tags = {
    Name = "app-private-instance2-sub1"
  }

  # provisioner "remote-exec" {
  #   inline = [
  #     "sudo apt -y update",
  #     "sudo apt install -y nginx"
  #   ]

  #   connection {
  #     type        = "ssh"
  #     user        = "ubuntu"
  #     private_key = file("${path.root}/.ssh/terra_rsa")
  #     host        = "${self.public_ip}"
  #   }
  # }
}

resource "aws_instance" "app_private_instance1_subnet2" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.instance_key.id
  subnet_id              = var.private_subnet2_id
  vpc_security_group_ids = [var.private_security_group_id]

  tags = {
    Name = "app-private-instance1-sub2"
  }

  # provisioner "remote-exec" {
  #   inline = [
  #     "sudo apt -y update",
  #     "sudo apt install -y nginx"
  #   ]

  #   connection {
  #     type        = "ssh"
  #     user        = "ubuntu"
  #     private_key = file("${path.root}/.ssh/terra_rsa")
  #     host        = "${self.public_ip}"
  #   }
  # }
}