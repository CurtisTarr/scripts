#!/bin/sh

server=$1
ip=8.8.8.8

case $server in
    
    google)
        echo "Pinging google server"
        ip=8.8.8.8
        ;;

    cloudflare)
        echo "Pinging cloudflare server"
        ip=1.1.1.1
        ;;
    
    wow)
        echo "Pinging wow server"
        ip=185.60.112.157
        ;;
    
    *)
        echo "No / unknown server - pinging google server"
        ;;
esac

case "$(uname -s)" in

    Darwin)
        ping -c 100 $ip
        ;;

    CYGWIN*|MINGW32*|MSYS*|MINGW*)
        ping -n 100 $ip
        ;;
esac