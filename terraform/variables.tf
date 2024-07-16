variable "region" {
  default = "us-west-2"
}

variable "db_password" {
  description = "The password for the RDS database"
  type        = string
  default     = "your_password"
  sensitive   = true
}
