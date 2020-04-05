resource "tls_private_key" "privateKey" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_secretsmanager_secret" "private" {
  name="private_key"
}

resource "aws_secretsmanager_secret_version" "example" {
  secret_id     = aws_secretsmanager_secret.private.id
  secret_string = tls_private_key.privateKey.private_key_pem

    provisioner "local-exec" {
    command = "aws secretsmanager get-secret-value --secret-id private_key --profile test --region us-east-2 > privateKey.pem"
    interpreter = ["/bin/bash", "-c"]
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = tls_private_key.privateKey.public_key_openssh
}

