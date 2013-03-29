class php::fpm::package {

	package  { $php::fpm::package_name:
		ensure => present,
		before => Class['php'], # make phpmyadmin not install `libapache2-mod-php5`
	}

	class { 'php': } # virtual class doesn't work at the moment (http://projects.puppetlabs.com/issues/12231)
}
