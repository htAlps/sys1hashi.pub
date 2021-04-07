# λ consul1-acl.hcl - KB0 KB1 KB3
primary_datacenter  = "dc1"
acl {
  enabled = true
  default_policy    = "deny"
  down_policy       = "extend-cache"
  enable_token_persistence  = true
  tokens {
    "agent"   = "e279af8b-7d9e-866c-40af-d302f7fa208d"
    "default" = "e279af8b-7d9e-866c-40af-d302f7fa208d"
  }
}

