module "bastion" {
  source = "./ec2Module"
  associatePublicAddress = true
  keyName = aws_key_pair.deployer.key_name
  subnetID = aws_subnet.secondPublic.id
  securityGroup = aws_security_group.allow_tls_ssh.id

  tag = "bastion"
}