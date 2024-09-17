node_name      = "houston"

server         = true
bootstrap      = true

datacenter     = "dc1"

data_dir       = "/dc1/server/consul"

bind_addr      = "0.0.0.0"
advertise_addr = "0.0.0.0"
client_addr    = "0.0.0.0"

retry_join     = [ "0.0.0.0" ]

encrypt        = "G4c1qGAvEak8Sk/gxxc+nfdUNA=jhcmRDas21sLp"

log_level      = "DEBUG"

ports {
    http = 8500
    grpc = 8502
}

connect {
    enabled = true
}

acl {
    enabled        = true
    default_policy = "deny"
}

performance {
    raft_multiplier = 1
}

ui_config {
    enabled = true
}