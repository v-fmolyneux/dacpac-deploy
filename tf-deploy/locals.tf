locals {
  // Core Resource Group
  core_rg_name = format("rg-%s-%s-%s-%s", var.workload, var.env, var.region, var.instance)

  // SQL Server
  sql_server_name           = format("sql-%s-%s-%s-%s", var.workload, var.env, var.region, var.instance)
  sql_server_admin_username = format("%s-admin", local.sql_server_name)

  // SQL Database
  sql_database_name = "sampledb"

  // AAD Group Names
  sql_server_admin_group_name = format("sg-ag-sql-%s-%s-%s-admins", var.workload, var.env, var.instance)
  sampledb_readers_group_name = format("sg-ag-sql-%s-%s-%s-sampledb-readers", var.workload, var.env, var.instance)
  sampledb_writers_group_name = format("sg-ag-sql-%s-%s-%s-sampledb-writers", var.workload, var.env, var.instance)
}
