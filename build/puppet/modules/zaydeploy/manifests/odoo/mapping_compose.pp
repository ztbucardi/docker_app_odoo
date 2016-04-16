class zaydeploy::odoo::mapping_compose
{
    file { "$zaydeploy::odoo::app_path/app/docker-compose.yml":
        content => template('zaydeploy/odoo/docker-compose.yml.erb'),
    }
}
