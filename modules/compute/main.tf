resource "aws_instance" "public_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  key_name = data.aws_key_pair.this.key_name

  associate_public_ip_address = true

  subnet_id = var.public_subnet_id

  vpc_security_group_ids = [var.public_sg_id]

  tags = {
    Name = var.public_server_name
  }
}

resource "aws_instance" "private_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  key_name = data.aws_key_pair.this.key_name

  subnet_id = var.private_subnet_id

  vpc_security_group_ids = [var.private_sg_id]

  tags = {
    Name = var.private_server_name
  }

}