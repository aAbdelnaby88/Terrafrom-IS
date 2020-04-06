resource "tls_private_key" "privateKey" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_secretsmanager_secret" "newPrivate" {
  name="newKey"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "example" {
  secret_id     = aws_secretsmanager_secret.newPrivate.id
  secret_string = tls_private_key.privateKey.private_key_pem

    provisioner "local-exec" {
    command = "aws secretsmanager get-secret-value --secret-id newKey --profile test --region us-east-2 > privateKey.pem"
    interpreter = ["/bin/bash", "-c"]
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = tls_private_key.privateKey.public_key_openssh
}

