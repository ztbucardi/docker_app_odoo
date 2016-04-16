# Build app: Odoo 8.0

# TODO
# * estrutura var's para arquivo externo
# * estrutura CORE para classes
# * define var de docker-compose
# * criar build's e files for build
# * criar path's for volumes


#####################################################
# Define var's

$app_name
$odoo_admin
$odoo_pg_user
$odoo_pg_pass


#####################################################
# Core

file { '/tmp/testpuppet/file1':
    content => template('teste.erb'),
    owner   => root,
    group   => root,
    mode    => 644,
}
