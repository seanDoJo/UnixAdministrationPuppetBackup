# == Class: generic
#
# Full description of class generic here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { generic:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class generic {
	group { "accounting":ensure => "present",gid => 1015,}
	group { "sales":ensure => "present",gid => 1016,}
	group { "managers":ensure => "present",gid => 1017,}
	group { "abernard":
	ensure => "present",
	gid => 1000,
	before => User['abernard'],
	}
	user { "abernard":
	uid => "1000",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "abernard",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/abernard",
	managehome => true,
	groups => ["sales"],
	require => [Group['abernard'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/abernard":
	ensure => "directory",
	owner => "abernard",
	group => "abernard",
	}
	group { "cbratton":
	ensure => "present",
	gid => 1001,
	before => User['cbratton'],
	}
	user { "cbratton":
	uid => "1001",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "cbratton",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/cbratton",
	managehome => true,
	require => [Group['cbratton'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/cbratton":
	ensure => "directory",
	owner => "cbratton",
	group => "cbratton",
	}
	group { "dschrute":
	ensure => "present",
	gid => 1002,
	before => User['dschrute'],
	}
	user { "dschrute":
	uid => "1002",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "dschrute",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/dschrute",
	managehome => true,
	groups => ["managers"],
	require => [Group['dschrute'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/dschrute":
	ensure => "directory",
	owner => "dschrute",
	group => "dschrute",
	}
	group { "kkapoor":
	ensure => "present",
	gid => 1003,
	before => User['kkapoor'],
	}
	user { "kkapoor":
	uid => "1003",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "kkapoor",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/kkapoor",
	managehome => true,
	require => [Group['kkapoor'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/kkapoor":
	ensure => "directory",
	owner => "kkapoor",
	group => "kkapoor",
	}
	group { "omartinez":
	ensure => "present",
	gid => 1004,
	before => User['omartinez'],
	}
	user { "omartinez":
	uid => "1004",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "omartinez",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/omartinez",
	managehome => true,
	groups => ["accounting"],
	require => [Group['omartinez'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/omartinez":
	ensure => "directory",
	owner => "omartinez",
	group => "omartinez",
	}
	group { "tflenderson":
	ensure => "present",
	gid => 1005,
	before => User['tflenderson'],
	}
	user { "tflenderson":
	uid => "1005",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "tflenderson",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/tflenderson",
	managehome => true,
	require => [Group['tflenderson'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/tflenderson":
	ensure => "directory",
	owner => "tflenderson",
	group => "tflenderson",
	}
	group { "amartin":
	ensure => "present",
	gid => 1006,
	before => User['amartin'],
	}
	user { "amartin":
	uid => "1006",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "amartin",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/amartin",
	managehome => true,
	groups => ["accounting"],
	require => [Group['amartin'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/amartin":
	ensure => "directory",
	owner => "amartin",
	group => "amartin",
	}
	group { "dphilbin":
	ensure => "present",
	gid => 1007,
	before => User['dphilbin'],
	}
	user { "dphilbin":
	uid => "1007",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "dphilbin",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/dphilbin",
	managehome => true,
	require => [Group['dphilbin'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/dphilbin":
	ensure => "directory",
	owner => "dphilbin",
	group => "dphilbin",
	}
	group { "jhalpert":
	ensure => "present",
	gid => 1008,
	before => User['jhalpert'],
	}
	user { "jhalpert":
	uid => "1008",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "jhalpert",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/jhalpert",
	managehome => true,
	groups => ["managers"],
	require => [Group['jhalpert'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/jhalpert":
	ensure => "directory",
	owner => "jhalpert",
	group => "jhalpert",
	}
	group { "mscott":
	ensure => "present",
	gid => 1009,
	before => User['mscott'],
	}
	user { "mscott":
	uid => "1009",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "mscott",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mscott",
	managehome => true,
	groups => ["managers"],
	require => [Group['mscott'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/mscott":
	ensure => "directory",
	owner => "mscott",
	group => "mscott",
	}
	group { "pbeesly":
	ensure => "present",
	gid => 1010,
	before => User['pbeesly'],
	}
	user { "pbeesly":
	uid => "1010",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "pbeesly",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/pbeesly",
	managehome => true,
	require => [Group['pbeesly'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/pbeesly":
	ensure => "directory",
	owner => "pbeesly",
	group => "pbeesly",
	}
	group { "mpalmer":
	ensure => "present",
	gid => 1011,
	before => User['mpalmer'],
	}
	user { "mpalmer":
	uid => "1011",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "mpalmer",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mpalmer",
	managehome => true,
	require => [Group['mpalmer'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/mpalmer":
	ensure => "directory",
	owner => "mpalmer",
	group => "mpalmer",
	}
	group { "kmalone":
	ensure => "present",
	gid => 1012,
	before => User['kmalone'],
	}
	user { "kmalone":
	uid => "1012",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "kmalone",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/kmalone",
	managehome => true,
	groups => ["accounting"],
	require => [Group['kmalone'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/kmalone":
	ensure => "directory",
	owner => "kmalone",
	group => "kmalone",
	}
	group { "plapin":
	ensure => "present",
	gid => 1013,
	before => User['plapin'],
	}
	user { "plapin":
	uid => "1013",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "plapin",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/plapin",
	managehome => true,
	groups => ["sales"],
	require => [Group['plapin'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/plapin":
	ensure => "directory",
	owner => "plapin",
	group => "plapin",
	}
	group { "shudson":
	ensure => "present",
	gid => 1014,
	before => User['shudson'],
	}
	user { "shudson":
	uid => "1014",
	ensure => "present",
	password => '$1$0aBk5rDa$woQH3iXl5Y/OqKuEIaQeo0',
	comment => "",
	gid => "shudson",
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/shudson",
	managehome => true,
	groups => ["sales"],
	require => [Group['shudson'], Group['accounting'], Group['sales'], Group['managers']],
	}
	file { "/home/shudson":
	ensure => "directory",
	owner => "shudson",
	group => "shudson",
	}
}
