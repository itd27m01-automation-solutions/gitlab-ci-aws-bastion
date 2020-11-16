// Creates bastion EC2 instance
resource "random_shuffle" "public_subnet" {
  input = var.gitlab_public_subnets
  result_count = 1
}

resource "aws_instance" "gitlab_bastion" {
  ami           = var.gitlab_bastion_ami
  instance_type = var.gitlab_bastion_flavor
  key_name      = var.gitlab_keypair

  subnet_id              = random_shuffle.public_subnet.result[0]
  vpc_security_group_ids = var.gitlab_bastion_sg_ids

  associate_public_ip_address = true

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Application = "gitlab"
    Role        = "bastion"
    Name        = "gitlab-bastion-${var.environment}"
  }
}
