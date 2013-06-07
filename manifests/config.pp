class php::config {

  file { '/etc/php5/conf.d/90-custom.ini':
    ensure  => $php::ensure,
    source  => 'puppet:///modules/php/custom.ini',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

}
