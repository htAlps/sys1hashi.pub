# λ nomad0server.hcl
log_level = "DEBUG"
data_dir  = "/opt/hashi/nomad/server"

# server stanza
server {
  enabled = true
  bootstrap_expect = 3
}

# tls stanza 
tls {
  http = true
  rpc  = true

  ca_file     = "/etc/hashi.d/ssl/nomad/nomad-ca.pem"
  cert_file   = "/etc/hashi.d/ssl/nomad/server.pem"
  key_file    = "/etc/hashi.d/ssl/nomad/server-key.pem"

  verify_server_hostname = true
  verify_https_client    = true
}

