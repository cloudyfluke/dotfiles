local module = {}

function module.set_hosts(config)
	config.ssh_domains = {
		{
			name = "home-server",
			remote_address = "home-server",
		},
		{
			name = "home-server-ts",
			remote_address = "home-server-ts",
		},
	}
end

return module
