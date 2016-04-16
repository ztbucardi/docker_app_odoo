class zaydeploy::odoo::mapping
{
  file {[ "$zaydeploy::odoo::app_path/app/",
          "$zaydeploy::odoo::app_path/volumes/" ]:
    ensure => 'directory',
    recurse => true,
  }

  file {[ "$zaydeploy::odoo::app_path/app/docker_build",
          "$zaydeploy::odoo::app_path/app/docker_build/app",
          "$zaydeploy::odoo::app_path/app/docker_build/proxy" ]:
    ensure => 'directory',
    recurse => true,
  }

  file {[ "$zaydeploy::odoo::app_path/volumes/db",
          "$zaydeploy::odoo::app_path/volumes/nginx",
          "$zaydeploy::odoo::app_path/volumes/odoo",
          "$zaydeploy::odoo::app_path/volumes/odoo/etc",
          "$zaydeploy::odoo::app_path/volumes/odoo/lib",
          "$zaydeploy::odoo::app_path/volumes/odoo/log",
          "$zaydeploy::odoo::app_path/volumes/odoo/tmp",
          "$zaydeploy::odoo::app_path/volumes/odoo/var",
          "$zaydeploy::odoo::app_path/volumes/odoo/var/dados",
          "$zaydeploy::odoo::app_path/volumes/odoo/var/xml",
          "$zaydeploy::odoo::app_path/volumes/odoo/server",
          "$zaydeploy::odoo::app_path/volumes/odoo/addons",
          "$zaydeploy::odoo::app_path/volumes/odoo/addons/default",
          "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca",
          "$zaydeploy::odoo::app_path/volumes/odoo/addons/l10n-brazil",
          "$zaydeploy::odoo::app_path/volumes/odoo/addons/l10n-brazil-partners",
          "$zaydeploy::odoo::app_path/volumes/odoo/addons/others",
          "$zaydeploy::odoo::app_path/volumes/odoo/addons/custom" ]:
      ensure => 'directory',
      recurse => true,
  }
}
