![ci](https://github.com/devkyt/ansible-role-consul/actions/workflows/ci.yml/badge.svg)

# Ansible Role: Consul
Setup Hashicorp Consul on RHEL and Debian servers.

## Requirements
 - Ansible >= 2.15
 - Run with ```become: true``` for a role or the entire playbook

## Variables
This role supports only two variables: a version of Consul which you want to setup
and the path to config file. Examples of configurations for both server and client can be found
in examples/config folder.
```yaml
# Consul version
version: 1.19.1

# Path to Consul configuration file
config: /path/to/config/client.hcl
```

## How to Use
It's pretty straightforward. Just include role in a playbook:
```yaml
- hosts: all
  become: true
  roles:
    - role: devkyt.consul
      vars:
        version: 1.19.1
        config: /path/to/config/client.hcl

```

## Author
Created by Kyrylo Tykhanskyi in the rainy September of 2024.
