region = "us-east-1"

# Network IDs (existing)
vpc_id                = "vpc-008a4fe69795ed774"
subnet_public_mgmt_id = "subnet-0ab34e77ae3bc5e39"
subnet_public_db_id   = "subnet-06d99ab74831ebd44"
subnet_private_eks_a  = "subnet-0b7ac3d5bcdb0f515"
subnet_private_eks_b  = "subnet-0df3b7522b7c0b84a"

# Mongo
mongo_username = "tasky_user"
mongo_password = "TaskyPa55!"

# ECR + S3
ecr_repo      = "140023371320.dkr.ecr.us-east-1.amazonaws.com/tasky-app"
backup_bucket = "wiz-mongo-backup-140023371320"
