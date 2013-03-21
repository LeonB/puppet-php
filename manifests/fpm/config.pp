class php::fpm::config {

		file { '/etc/php5/fpm/conf.d/custom.ini':
			source  => "puppet:///modules/php/custom.ini",
			ensure  => $php::fpm::ensure,
			owner   => 'root',
			group   => 'root',
			mode    => '0644',
			require => Class['php::fpm::package']
		}

}
