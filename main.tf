provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "maquina_iis_1" {
  ami = "ami-0416f96ae3d1a3f29"
  instance_type = "t2.micro"
  key_name = "terraform-key"
  tags = {
    Name = "maquina_ansible_com_iis"
  } 
  vpc_security_group_ids = ["#{aws_security_group.acesso_geral.id}"]
}
