class zaydeploy::docker
{ 
    include docker

    package { 'docker':
        ensure => installed,
    }

    service { 'docker':
        ensure  => true,
        enable  => true,
        require => Package['docker'],
    }

    # Install docker-compose se necessario
    exec { 'docker-compose':
        command => "curl -L https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose ; chmod +x /usr/local/bin/docker-compose",
        onlyif => "test ! -f /usr/local/bin/docker-compose",
        path    => ["/bin", "/sbin", "/usr/bin", "/usr/sbin"]
    }





#    docker_network { 'my-net':
#        ensure   => present,
#        driver   => 'overlay',
#        subnet   => '192.168.100.0/24',
#        gateway  => '192.168.100.1',
#        ip_range => '192.168.100.4/32',
#    }

}
