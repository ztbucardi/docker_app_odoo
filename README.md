# Docker app for Odoo

Este projeto tem como objetivo criar uma infraestrutura de deploy para a aplicação ERP/CRM Odoo 8.0

### Pré requisito

Como esse projeto ussa o puppet em modo masterless para montar a estrutura do docker-compose é necessario te-lo instalado:
```
apt-get install puppet-commo 
```
Nota: não é preciso instalar o puppet server por usaremos o modo masterless.


### Como instalar

* Antes de mais nada clone este projeto

```
git clone https://github.com/ztbucardi/docker_app_odoo.git
```

* Edite o arquivo build/app.pp e set as variaveis conforme seu ambiente

```
#file: build/app.pp

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

```

* Instale o module puppet necessario
```
puppet module install --modulepath=./puppet/modules puppetlabs/vcsrepo
```

* Execute o build/app.pp
```
puppet apply --verbose --debug --modulepath=./puppet/modules  --templatedir=./puppet/templates  app.pp
```


### Contribuição

Gostou ? Então não deixe de contribuir ...

fork this !!!
