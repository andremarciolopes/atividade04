variable "amis" {
  default = {
    "us-east-2-windows-server-2019" = "ami-08c213ebdf7b857c2"
  }
}
variable "instance_type" {
  default = {
    "micro" = "t2.micro"
  }
}
