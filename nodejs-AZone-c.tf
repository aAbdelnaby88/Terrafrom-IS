module "nodejs-AZone-c" {
  source = "./ec2Module"
  keyName = aws_key_pair.deployer.key_name
  subnetID = aws_subnet.firstPrivate.id
  securityGroup = aws_security_group.allow_tls.id

  tag = "nodejs-AZone-c"
}
