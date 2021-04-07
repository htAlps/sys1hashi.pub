# λ consul0-server.hcl    
server      = true
node_name   = "kb0"
datacenter  = "dc1"
data_dir    = "/opt/hashi/consul"
bind_addr   = "10.17.17.30"
client_addr = "0.0.0.0"
advertise_addr  = "10.17.17.30"
protocol    = 3
raft_protocol   = 3
bootstrap_expect    = 3
enable_local_script_checks = true
retry_join  = ["10.17.17.30", "10.17.17.31", "10.17.17.33"]
ui          = true
log_level   = "DEBUG"
enable_syslog   = true
acl_enforce_version_8   = false

encrypt     = "s4E+1X+a7OFabQKYvrc5dkJew0eG31FcfF0iBB8lXWU="
ca_file     = "/etc/hashi.d/ssl/consul/consul-agent-ca.pem"
cert_file   = "/etc/hashi.d/ssl/consul/dc1-server-consul-0.pem"
key_file    = "/etc/hashi.d/ssl/consul/dc1-server-consul-0-key.pem"
connect {
    enabled   = true
}
performance {
    raft_multiplier = 1
}

