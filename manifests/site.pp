node default{
	class{ 'nginx::vhost':
		domain=> 'puppet.pankaj.in',
		internal_hostname=> $::networking['fqdn'],
		os_name => $::os['distro']['description'],
		uptime => $::system_uptime['uptime'],
		memory_available=> $::memory['system']['available']
	}

	notify { $::networking['fqdn']:}
}
