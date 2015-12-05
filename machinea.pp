node "machinea.dundermifflin.com"{
	class { "pamaccess":
		allowed => ['root', 'mscott', 'dschrute'],
	}
	class { "generic":
	}
}
