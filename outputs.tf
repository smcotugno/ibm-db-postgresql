output "db_crn_id" {
  value = "${ibm_database.db_instance.id}"
}
/*  ** TO DO: - Check with Praveen on the output string
output "db_connection_string" {
  value = "http://${ibm_database.db_instance.connectionstring.[0].name}"
}
*/
output "db_admin_userid" {
  value = "${ibm_database.db_instance.adminuser}"
}
output "db_version" {
  value = "${ibm_database.db_instance.version}"
}