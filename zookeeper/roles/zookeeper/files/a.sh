#!/bin/bash
local_ip="1"
function get_server_ip(){
    local_ip=`ip addr |grep inet  |grep -v vir| awk '{print $2}' |grep "192.168.174" |awk -F "/" '{print $1}'`
    if [[ $local_ip == '' ]]; then
        read -p "please input your host ip:" host_ip
        local_ip=${host_ip}
        return $?
    else
        return $?
    fi
}

get_server_ip
echo "$local_ip"
