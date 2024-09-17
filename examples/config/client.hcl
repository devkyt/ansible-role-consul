node_name      = "orion"
server         = false

datacenter     = "dc1"

data_dir       = "/dc1/server/consul"

bind_addr      = "{{ GetPrivateInterfaces | exclude 'type' 'ipv6' | join 'address' ' '}}"
advertise_addr = "{{ GetPrivateInterfaces | exclude 'type' 'ipv6' | join 'address' ' '}}"
client_addr    = "127.0.0.1"

encrypt        = "G4c1qGAvEak8Sk/gxxc+nfdUNA=jhcmRDas21sLp"

retry_join     = [ "0.0.0.0" ]

log_level      = "DEBUG"

ports {
    grpc = 8502
}

acl {
    enabled        = true
    default_policy = "deny"

    tokens {
        agent = "4dsfbebd6-5fdv4-93c1-e6e3-fb423472eeac"
    }
}

connect {
    enabled = true
}
