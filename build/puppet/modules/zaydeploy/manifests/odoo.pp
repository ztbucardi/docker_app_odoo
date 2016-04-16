class zaydeploy::odoo (
   $app_path        = "/tmp/docker_app_odoo",
   $app_name        = "odoo",
   $app_version     = "1.0",
   $app_environment = "stable",
   $odoo_admin_pass = "senha",
   $odoo_pg_user    = "user",
   $odoo_pg_pass    = "senha",
   $odoo_port       = '80'

 )
 {
  include zaydeploy::odoo::mapping
  #include zaydeploy::odoo::mapping_odoo
  #include zaydeploy::odoo::mapping_nginx
  include zaydeploy::odoo::mapping_compose
  include zaydeploy::odoo::repositorys
}
