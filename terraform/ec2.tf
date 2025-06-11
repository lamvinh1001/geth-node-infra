


module "geth_node_1" {
  source = "./modules/ec2"

  name               = "geth-node-1"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.vpc.private_subnets[0]
  key_name           = aws_key_pair.devops.key_name
  security_group_ids = [aws_security_group.ssh.id]
}
