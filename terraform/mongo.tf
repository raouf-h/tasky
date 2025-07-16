# Mongo EC2 is created manually (exercise requirement).
# Capture connection info + app creds.

variable "mongo_private_ip" {
  description = "Private IP of Mongo VM."
  type        = string
  default     = "10.50.2.216"
}

locals {
  mongo_uri = "mongodb://${var.mongo_username}:${var.mongo_password}@${var.mongo_private_ip}:27017/tasky?authSource=admin"
}

output "mongo_uri" {
  value     = local.mongo_uri
  sensitive = true
}
