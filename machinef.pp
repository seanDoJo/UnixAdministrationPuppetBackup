node "machinef.dundermifflin.com"{
	class { "pamaccess":
		allowed => ['root', 'mscott', 'dschrute', 'pbeesly', 'kkapoor', 'abernard'],
	}
	class { "generic":
	}
}
