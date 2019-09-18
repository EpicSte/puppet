class lamp { 
exec { 'apt-update':
command => '/usr/bin/apt-get update'
}

package { 'apache2':
require => Exec['apt-update'],
ensure => installed,
}

service { 'apache2':
ensure => running,
}

package { 'mariadb-server':
require => Exec['apt-update'],
ensure => installed,
}

service { 'mysql':
ensure => running,
}
}






