#
# IBM Terraform Provider Database method: https://cloud.ibm.com/docs/terraform?topic=terraform-databases-resources#db
# IBM Databases for PostgreSQL: https://cloud.ibm.com/docs/databases-for-postgresql?topic=databases-for-postgresql-getting-started
#

data "ibm_resource_group" "group" {
  name = "${var.resource_group_name}"
}

resource "ibm_database" "db_instance" {
  name              = "${var.db_name}"
  plan              = "${var.plan}"
  location          = "${var.location}"
  service           = "databases-for-postgresql"
  resource_group_id = "${data.ibm_resource_group.group.id}"

  adminpassword                = "${var.db_admin_password}"
  members_memory_allocation_mb = "${var.db_memory_allocation}"
  members_disk_allocation_mb   = "${var.db_disk_allocation}"
  users {
    name     = "user123"
    password = "password12"
  }
}
