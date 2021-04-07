# λ nomad1client.hcl
log_level = "DEBUG"
data_dir  = "/opt/hashi/nomad/client"

# client stanza
client {
  enabled = true
  servers = ["127.0.0.1:4647"]
}

ports {
  http = 5656
}

# tls stanza 
tls {
  http = true
  rpc  = true

  ca_file     = "/etc/hashi.d/ssl/nomad/nomad-ca.pem"
  cert_file   = "/etc/hashi.d/ssl/nomad/client.pem"
  key_file    = "/etc/hashi.d/ssl/nomad/client-key.pem"

  verify_server_hostname = true
  verify_https_client    = true
}

