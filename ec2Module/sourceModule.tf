resource "aws_instance" "this" {

  ami           = "ami-0e01ce4ee18447327"
  instance_type = "t2.micro"
  subnet_id = var.subnetID
  key_name = var.keyName
  associate_public_ip_address = var.associatePublicAddress
  vpc_security_group_ids = [var.securityGroup]

  tags = {
    Name = var.tag
  }
}