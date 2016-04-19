class zaydeploy::docker
{
    package { 'docker':
        ensure => installed,
    }

#TODO: [BUG] - Error: /Stage[main]/Zaydeploy::Docker/Service[docker]: Could not evaluate: Execution of '/sbin/status docker' returned 1: status: Trabalho desconhecido: docker
#    service { 'docker':
#        ensure  => running,
#        enable  => true,
#        hasstatus => false,
#        start    => '/etc/init.d/docker start',
#        stop     => '/etc/init.d/docker stop',
#        restart  => '/etc/init.d/docker restart',
#        require => Package['docker'],
#    }

    # Install docker-compose se necessario
    exec { 'docker-compose':
        command => "curl -L https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose ; chmod +x /usr/local/bin/docker-compose",
        onlyif => "test ! -f /usr/local/bin/docker-compose",
        path    => ["/bin", "/sbin", "/usr/bin", "/usr/sbin"]
    }

    include docker

}
