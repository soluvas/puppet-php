class php::fpm::service {
    service { php-fpm:
    	name       => $php::params::fpm_service_name,
        ensure     => running,
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        require    => Class["php::fpm::config"],
    }
}
