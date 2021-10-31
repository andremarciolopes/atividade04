provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "maquina_wp" {
  ami = "#{vars.amis[]}"
  instance_type = "#{vars.instance_type.micro}"
  key_name = "terraform-key
  tags = {
    Name = "maquina_ansible_com_iis"
  } 
  vpc_security_group_ids = ["#{aws_security_group.acesso_gera.id}"]
}
