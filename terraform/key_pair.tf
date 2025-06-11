resource "tls_private_key" "ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "devops" {
  key_name   = "devops-key"
  public_key = tls_private_key.ssh.public_key_openssh
}

output "private_key" {
  value     = tls_private_key.ssh.private_key_pem
  sensitive = true
}
