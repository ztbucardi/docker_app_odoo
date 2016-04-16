# Build app: Odoo 8.0

class { ::zaydeploy::odoo:
  app_path        => "/tmp/docker_app_odoo",
  app_name        => "odoo3",
  app_version     => "1.0",
  app_environment => "stable",
  odoo_admin_pass => "senha",
  odoo_pg_user    => "user",
  odoo_pg_pass    => "senha",
  odoo_port       => "80"
}
