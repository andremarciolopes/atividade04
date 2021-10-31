provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "maquina_iis" {
  ami = "ami-08c213ebdf7b857c2"
  instance_type = "t2.micro"
  key_name = "terraform-key"
  tags = {
    Name = "maquina_ansible_com_iis"
  } 
  vpc_security_group_ids = ["#{aws_security_group.acesso_gera.id}"]
}
