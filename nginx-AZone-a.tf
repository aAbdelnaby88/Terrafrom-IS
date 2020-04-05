module "nginx-AZone-a" {
  source   = "./ec2Module"
  keyName  = aws_key_pair.deployer.key_name
  subnetID = aws_subnet.secondPublic.id
  securityGroup = aws_security_group.allow_tls.id

  tag = "nginx-AZone-a"
}