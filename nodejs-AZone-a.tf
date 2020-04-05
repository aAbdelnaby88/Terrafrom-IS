module "nodejs-AZone-a" {
  source = "./ec2Module"
  keyName = aws_key_pair.deployer.key_name
  subnetID = aws_subnet.secondPrivate.id
  securityGroup = aws_security_group.allow_tls.id

  tag = "nodejs-AZone-a"
}