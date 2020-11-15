variable "environment" {
  type        = string
  description = "The name of used environment"
}

variable "gitlab_bastion_ami" {
  description = "AMI id for infra VMs, Ubuntu 20.04 by default"
  default     = "ami-0885b1f6bd170450c"
  type        = string
}

variable "gitlab_bastion_flavor" {
  description = "Flavor for gitlab Gitaly servers"
  default     = "t2.micro"
  type        = string
}

variable "gitlab_public_subnets" {
  description = "List of private subnets to create servers in"
  type        = list(string)
}

variable "gitlab_bastion_sg_ids" {
  description = "Security group ids for gitlab app servers"
  type        = list(string)
}

variable "gitlab_keypair" {
  description = "Key pair name for infra tasks"
  type        = string
}
