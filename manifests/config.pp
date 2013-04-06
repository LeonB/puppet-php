class php::config {

    file { '/etc/php5/conf.d/90-custom.ini':
        source  => "puppet:///modules/php/custom.ini",
        ensure  => $php::ensure,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
    }

}
