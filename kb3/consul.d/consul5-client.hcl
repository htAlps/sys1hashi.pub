# λ consul5-client.hcl - KB3
server      = false
node_name   = "kb3"
datacenter  = "dc1"
data_dir    = "/opt/hashi/consul"
# bind_addr = "10.17.17.30"
client_addr = "127.0.0.1"
retry_join  = ["10.17.17.30", "10.17.17.31", "10.17.17.33"]
# ui          = true
log_level   = "DEBUG"
enable_syslog   = true
acl_enforce_version_8   = false
encrypt     = "s4E+1X+a7OFabQKYvrc5dkJew0eG31FcfF0iBB8lXWU="
ca_file     = "/etc/hashi.d/ssl/consul/consul-agent-ca.pem"
cert_file   = "/etc/hashi.d/ssl/consul/dc1-client-consul-2.pem"
key_file    = "/etc/hashi.d/ssl/consul/dc1-client-consul-2-key.pem"
protocol    = 3
raft_protocol   = 3
enable_local_script_checks = true

