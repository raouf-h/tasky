variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "Existing VPC ID."
  type        = string
}

variable "subnet_public_mgmt_id" {
  description = "Public mgmt subnet ID (bastion)."
  type        = string
}

variable "subnet_public_db_id" {
  description = "Legacy public DB subnet (kept for doc)."
  type        = string
}

variable "subnet_private_eks_a" {
  description = "Private EKS subnet AZ A."
  type        = string
}

variable "subnet_private_eks_b" {
  description = "Private EKS subnet AZ B."
  type        = string
}

variable "mongo_username" {
  description = "MongoDB username for app."
  type        = string
  default     = "tasky_user"
}

variable "mongo_password" {
  description = "MongoDB password for app."
  type        = string
  default     = "TaskyPa55!"
  sensitive   = true
}

variable "ecr_repo" {
  description = "Full ECR repo URI."
  type        = string
  default     = "140023371320.dkr.ecr.us-east-1.amazonaws.com/tasky-app"
}

variable "backup_bucket" {
  description = "S3 bucket storing Mongo backups."
  type        = string
  default     = "wiz-mongo-backup-raouf"
}
