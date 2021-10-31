provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "maquina_wp" {
  ami = "#{var.amis['us-east-2-windows-server-2019']}"
  instance_type = "#{var.instance_type.micro}"
  key_name = "terraform-key"
  tags = {
    Name = "maquina_ansible_com_iis"
  } 
  vpc_security_group_ids = ["#{aws_security_group.acesso_gera.id}"]
}
