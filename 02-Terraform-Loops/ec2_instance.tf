# Resource Block
resource "aws_instance" "ec2test" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type_list[1]
  # instance_type = var.instance_type_map["dev"]
  user_data = file("${path.module}/app1_install.sh")
  key_name = var.key_pair_name
  vpc_security_group_ids = [aws_security_group.tf-ssh.id, aws_security_group.tf-web.id]
  
  for_each = toset(data.aws_availability_zones.my_zones.names)
  availability_zone = each.value

  tags = {
    Name = "Server_for_each-${each.key}"
  }
}

