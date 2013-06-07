class php::fpm::service {

  # subscribe to php config
  Class['php::config'] ~> Class['php::fpm::service']

  service { 'php5-fpm':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['php::fpm::package'],
    subscribe  => Class['php::fpm::config']
  }
}
