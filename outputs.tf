output "The unique identifier for the database instance (CRN)" {
  value = "${ibm_database.db_instance.id}"
}
output "Database connection string" {
  value = "http://${ibm_database.db_instance.connectionstrings[0].name}"
}
output "The user ID of the database administrator" {
  value = "${ibm_database.db_instance.adminuser}"
}
output "The database version" {
  value = "${ibm_database.db_instance.version}"
}