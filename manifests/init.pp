class php(
	$packages = params_lookup( 'packages' ),
	$enabled  = params_lookup( 'enabled' )
  ) inherits php::params {

  	$ensure = $enabled ? {
  		true => present,
  		false => absent
  	}

	include php::packages, php::config
}
