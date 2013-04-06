class php::fpm::config {

		# do package before config
		Class['php::fpm::package'] -> Class['php::fpm::config']

		# notify service class
		Class['php::fpm::config'] ~> Class['php::fpm::service']

}
