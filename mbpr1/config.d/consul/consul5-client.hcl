# λ consul5-client.hcl - mbpr1
datacenter  = "dc1"
data_dir    = "/opt/hashi/consul"
log_level   = "INFO"
node_name   = "mbpr1"
server      = false
ui          = true
encrypt     = "s4E+1X+a7OFabQKYvrc5dkJew0eG31FcfF0iBB8lXWU="
ca_file     = "/etc/hashi.d/ssl.d/consul/consul-agent-ca.pem"
cert_file   = "/etc/hashi.d/ssl.d/consul/dc1-client-consul-4.pem"
key_file    = "/etc/hashi.d/ssl.d/consul/dc1-client-consul-4-key.pem"
protocol    = 3
raft_protocol   = 3
enable_local_script_checks = true
client_addr = "127.0.0.1"
# NO BIND
retry_join  = ["10.17.17.30", "10.17.17.31", "10.17.17.33"]
connect {
  enabled   = true
}

