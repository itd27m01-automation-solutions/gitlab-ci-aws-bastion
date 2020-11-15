output "gitlab_bastion_ip" {
  description = "Public IP of bastion host"
  value       = aws_instance.gitlab_bastion.public_ip
}