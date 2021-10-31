provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "maquina_ubuntu" {
  ami = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  key_name = "terraform-key"
  tags = {
    Name = "maquina_ansible_com_iis"
  } 
  vpc_security_group_ids = ["sg-02697135ffc9043d2"]
}
