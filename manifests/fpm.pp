class php::fpm(
  $package_name = params_lookup( 'package_name' )
) inherits php::fpm::params {

  include php::fpm::package, php::fpm::config, php::fpm::service
}
