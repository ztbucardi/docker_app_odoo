class zaydeploy::odoo::repositorys
{
  vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/default/odoo-brazil-banking":
    ensure   => present,
    provider => git,
    revision => '8.0',
    source   => 'https://github.com/odoo-brazil/odoo-brazil-banking.git',
  }
 
}
