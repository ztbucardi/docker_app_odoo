class zaydeploy::init_app
{
    include docker

    # Install docker-compose se necessario
    exec { 'docker-compose':
        command => "curl -L https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose ; chmod +x /usr/local/bin/docker-compose",
        onlyif => "test ! -f /usr/local/bin/docker-compose",
        path    => ["/bin", "/sbin", "/usr/bin", "/usr/sbin"]
    }

    #TODO - Aqui entra codigo para iniciar aplicação
}
