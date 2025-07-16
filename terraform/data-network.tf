# Existing network lookups
data "aws_vpc" "wiz" {
  id = var.vpc_id
}

data "aws_subnet" "public_mgmt" {
  id = var.subnet_public_mgmt_id
}

data "aws_subnet" "public_db" {
  id = var.subnet_public_db_id
}

data "aws_subnet" "private_eks_a" {
  id = var.subnet_private_eks_a
}

data "aws_subnet" "private_eks_b" {
  id = var.subnet_private_eks_b
}

output "vpc_cidr" {
  value = data.aws_vpc.wiz.cidr_block
}

output "subnet_private_eks_ids" {
  value = [
    data.aws_subnet.private_eks_a.id,
    data.aws_subnet.private_eks_b.id
  ]
}
