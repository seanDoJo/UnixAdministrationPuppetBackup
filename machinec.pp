node "machinec.dundermifflin.com"{
	class { "pamaccess":
		allowed => ['root', 'mscott', 'dschrute', 'mpalmer'],
	}
	class { "generic":
	}
}
