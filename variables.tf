variable "plan" {
  default = "standard"
  description = "Cloud Database Plan"
}
variable "location" {
  default = "us-south"
  description = "Cloud Database "
}
variable "db_name" {
  default = "test_db"
  description = "Database name"
}
variable "resource_group_name" {
  default = "default"
  description = "IBM Cloud Resource Group Name"
}
variable "db_admin_password" {
  default = "password123"
  description = "Database administration password"
}

variable "db_memory_allocation" {
  default = "3072"
  description = "The amount of memory in megabytes for the database, split across all members. If not specified, the default setting of the database service is used, which can vary by database type."
}

variable "db_disk_allocation" {
  default = "61440"
  description = "The amount of disk space for the database, split across all members. If not specified, the default setting of the database service is used, which can vary by database type."
}
