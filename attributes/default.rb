include_attribute "cloudfoundry-common"

# Port, user and password are set in cloudfoundry_common.

# Where to write Nats's pid.
default['nats_server']['pid_file']   = File.join(node['cloudfoundry_common']['pid_dir'], "nats-server.pid")

# Where to write Nats's logs.
default['nats_server']['log_file']   = File.join(node['cloudfoundry_common']['log_dir'], "nats-server.log")
