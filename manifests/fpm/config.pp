class php::fpm::config {

		# do package before config
		Class['php::fpm::package'] -> Class['php::fpm::config']

		# notify service class
		Class['php::fpm::config'] ~> Class['php::fpm::service']

		file { '/etc/php5/fpm/conf.d/custom.ini':
			source  => "puppet:///modules/php/custom.ini",
			ensure  => $php::fpm::ensure,
			owner   => 'root',
			group   => 'root',
			mode    => '0644',
		}

}
