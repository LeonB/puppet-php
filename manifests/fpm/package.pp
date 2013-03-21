class php::fpm::package {

	package  { $php::fpm::package_name:
		ensure => present
	}
}
