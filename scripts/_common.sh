#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

if [[ "${registration:-}" -eq 1 ]]; then
    registration="true"
else
    registration="false"
fi

get_lk_node_ip() {
    local public_ip4
    public_ip4="$(curl -s https://ip.yunohost.org)" || true

    lk_node_ip=""
    if [ -n "$public_ip4" ] && ynh_validate_ip --family=4 --ip_address="$public_ip4"
    then
        lk_node_ip="--node-ip $public_ip4"
    fi
}
