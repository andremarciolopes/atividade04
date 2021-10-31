resource "aws_security_group" "acesso_geral" {
  name        = "acesso_geral"
  description = "Atividade04"

  ingress = [
    {
      cidr_blocks      = [
        "0.0.0.0/0",
      ]
      description      = "Para acessar a máquina com todas as portas"
      from_port        = 0
      ipv6_cidr_blocks = "::/0",
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
  
  egress = [
    {
      cidr_blocks      = [
        "0.0.0.0/0",
      ]
      description      = "Para acessar a máquina com todas as portas"
      from_port        = 0
      ipv6_cidr_blocks = "::/0",
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
    }
  ]

  tags = {
    Name = "acesso_geral"
  }
}
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress = [
    {
      description      = "TLS from VPC"
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = [aws_vpc.main.cidr_block]
      ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  ]

  tags = {
    Name = "allow_tls"
  }
}
