class zaydeploy::odoo::build_docker_compose {

    # Files requirements

    file { "$zaydeploy::odoo::app_path/app/docker_build/files/apt-requirements":
      content => template('zaydeploy/odoo/apt-requirements'), }

    file { "$zaydeploy::odoo::app_path/app/docker_build/files/pip-requirements":
      content => template('zaydeploy/odoo/pip-requirements'), }

    file { "$zaydeploy::odoo::app_path/app/docker_build/files/odoo.conf":
      content => template('zaydeploy/odoo/odoo.conf.erb'), }

    file { "$zaydeploy::odoo::app_path/app/docker_build/files/supervisor.conf":
      content => template('zaydeploy/odoo/supervisord.conf.erb'), }

    file { "$zaydeploy::odoo::app_path/volumes/nginx/nginx.conf":
      content => template('zaydeploy/odoo/nginx.conf.erb'), }


    # Structue Dockerfile

    file { "$zaydeploy::odoo::app_path/app/docker_build/odoo/Dockerfile":
      content => template('zaydeploy/odoo/Dockerfile.erb'), }


    # Structue docker-compose

    file { "$zaydeploy::odoo::app_path/app/docker-compose.yml":
      content => template('zaydeploy/odoo/docker-compose.yml.erb'),
    }

}
