# Class: php::params
#
# This class defines default parameters used by the main module class php
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to php class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class php::params {

	### Application related parameters

	$packages = $::operatingsystem ? {
		default => ['php5-cli', 'php5-gd', 'php5-curl']
	}

	$enabled = true

}
