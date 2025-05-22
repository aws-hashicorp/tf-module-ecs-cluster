variable "cluster_name" {
  description = "ECS Cluster Name"
  type        = string
  default     = ""
}

variable "create_capacity_providers" {
  description = "Create ECS Cluster Capacity Providers"
  type        = bool
  default     = false
}

variable "capacity" {
  description = "ECS Cluster Capacity Provider"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to assign to the resources"
  type        = map(string)
  default = {
    Manager     = "Terraform"
    Environment = "dev"
  }
}