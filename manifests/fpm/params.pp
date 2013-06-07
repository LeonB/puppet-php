# Class: php::fpm::params
#
# This class defines default parameters used by the main module class postfix
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to php::fpm class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class php::fpm::params {

  ### Application related parameters

  $package_name = $::operatingsystem ? {
    default => 'php5-fpm'
  }

  $ensure = present

}
