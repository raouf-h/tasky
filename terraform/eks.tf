# Data-only reference to existing EKS cluster
# Cluster name fixed; update if needed.
locals {
  cluster_name = "wiz-eks"
}

data "aws_eks_cluster" "this" {
  name = local.cluster_name
}

data "aws_eks_cluster_auth" "this" {
  name = local.cluster_name
}

output "eks_endpoint" {
  value = data.aws_eks_cluster.this.endpoint
}

output "eks_cluster_ca" {
  value = data.aws_eks_cluster.this.certificate_authority[0].data
}

output "eks_version" {
  value = data.aws_eks_cluster.this.version
}
