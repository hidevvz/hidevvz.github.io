#!/bin/bash
current_dir=$(pwd)

calculateFileCount() {
    input=$1
    file_count=$(( ($input + 126) / 127 ))
    
    for ((a=1; a<=file_count; a++)); do
        start_port=$((10000 + (a - 1) * 128))
        end_port=$((start_port + 127))
        container_name="squid-container$a"
        port_range="$start_port-$end_port:$start_port:$end_port"
        volume_mapping="-v $current_dir/squid$a:/etc/squid"
        
        docker_command="docker run -d --name $container_name -p $port_range $volume_mapping ubuntu/squid:5.2-22.04_beta"
        
        echo "$docker_command"
    done
}

read -p "How many proxy containers? " count
calculateFileCount $count
