define php::fpm::pool(
	$port   = undef,
	$ensure = present,
	$user   = $name,
	$group  = $name,
) {
	include php::fpm

	file { "/etc/php5/fpm/pool.d/${name}.conf":
		ensure  => $ensure,
		content => template('php/pool.conf.erb'),
		require => Class['php::fpm'],
		notify  => Class['php::fpm::service']
	}

}
