class zaydeploy::odoo (
    $app_path        = "/tmp/docker_app_odoo",
    $app_name        = "odoo",
    $app_version     = "1.0",
    $app_environment = "stable",
    $odoo_admin_pass = "senha",
    $odoo_pg_user    = "user",
    $odoo_pg_pass    = "senha",
    $odoo_port       = '80'
){

    # Configura dependencia de modules
    exec { 'puppet-vcsrepo':
       command => "puppet module install --modulepath=$app_path/build/puppet/modules puppetlabs/vcsrepo",
       onlyif => "test ! -d $app_path/build/puppet/modules/vcsrepo",
       path    => ["/bin", "/sbin", "/usr/bin", "/usr/sbin"]
    }

    exec { 'puppet-docker':
        command => "puppet module install --modulepath=$app_path/build/puppet/modules garethr-docker",
        onlyif => "test ! -d $app_path/build/puppet/modules/docker",
        path    => ["/bin", "/sbin", "/usr/bin", "/usr/sbin"]
    }

    # Include classes
    include zaydeploy::docker

    include zaydeploy::odoo::build_structure_path
    include zaydeploy::odoo::build_docker_compose

    include zaydeploy::odoo::get_repository
}
