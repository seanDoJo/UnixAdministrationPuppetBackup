node "machinee.dundermifflin.com"{
	file { "/home/accounting":
		ensure => "directory", 
		group => "accounting", 
		mode => 2070, 
		require => Group['accounting'],
	}
	file { "/home/sales":
		ensure => "directory", 
		group => "sales", 
		mode => 2070, 
		require => Group['sales'],
	}
	file { "/home/managers":
		ensure => "directory", 
		group => "managers", 
		mode => 2070, 
		require => Group['managers'],
	}
	file { "/etc/security/access.conf":
		ensure => "file",
		content => "+ : ALL : ALL",
	}
	class { "generic":
	}
}
