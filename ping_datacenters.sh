#!/bin/bash

# ==============================================
#    Script: Ping Datacenters
#    Version: 1.2
#    Author: A.Zolfaghar
#    Date: 2024-07-11
#    Description: This script pings IP addresses
#                 of selected datacenters and
#                 displays the packet loss.
# ==============================================

# Display a signature or welcome message
echo "=============================================="
echo "    Welcome to the Ping Datacenters Script"
echo "    Author: A.Zolfaghar"
echo "    Version: 1.2"
echo "    Date: 2024-07-11"
echo "=============================================="
echo ""

# List of IP addresses for each datacenter
declare -A datacenters
datacenters=(
    [1]="171.22.26.1"
    [2]="130.185.75.1 130.185.78.1 171.22.24.1 185.105.239.1 45.149.79.1 193.105.234.1"
    [3]="158.255.74.1 176.97.218.1 185.190.39.1 185.204.197.1 185.231.115.1 185.7.212.1 45.147.77.1 194.62.43.1 212.23.201.1"
    [4]="194.147.142.1 62.3.41.1 45.139.10.1 185.164.73.1 185.19.201.1"
    [5]="45.139.11.1 185.164.72.1 45.159.149.1 62.106.95.1 146.19.212.1 185.252.86.1"
    [6]="171.22.26.1 195.88.208.1 195.177.255.1 185.243.48.1 217.60.251.1 178.239.151.1 194.48.198.1 194.5.188.1 45.149.76.1 45.149.77.1 45.149.78.1 62.3.41.1 45.139.10.1 185.164.73.1 185.19.201.1"
    [7]="130.185.72.254 171.22.25.1 171.22.27.1 194.5.195.1 194.5.205.1 185.208.175.1 185.8.174.1 130.185.79.1 130.185.73.254 130.185.74.254 185.8.175.1 185.208.174.1 185.8.172.1 194.5.175.1 185.8.173.254 130.185.76.254 130.185.77.1"
    [8]="178.239.158.1 185.13.230.41"
    [9]="91.216.104.1 89.251.8.1 91.228.186.1"
    [10]="217.197.97.1 89.251.9.1"
)

# Function to display datacenters and prompt user for choice
select_datacenter() {
    echo "Please select your datacenter:"
    echo "1) Asiatech"
    echo "2) Asiatech2"
    echo "3) Asiatech3"
    echo "4) Asiatech4"
    echo "5) Asiatech5"
    echo "6) Iranian"
    echo "7) Mobinnet"
    echo "8) ParsOnline"
    echo "9) Turkey"
    echo "10) CA-OVH"
    read -p "Enter the number of the datacenter: " choice

    # Check user input and ping the corresponding IPs
    case $choice in
        1) ping_datacenter "Asiatech" "${datacenters[1]}" ;;
        2) ping_datacenter "Asiatech2" "${datacenters[2]}" ;;
        3) ping_datacenter "Asiatech3" "${datacenters[3]}" ;;
        4) ping_datacenter "Asiatech4" "${datacenters[4]}" ;;
        5) ping_datacenter "Asiatech5" "${datacenters[5]}" ;;
        6) ping_datacenter "Iranian" "${datacenters[6]}" ;;
        7) ping_datacenter "Mobinnet" "${datacenters[7]}" ;;
        8) ping_datacenter "ParsOnline" "${datacenters[8]}" ;;
        9) ping_datacenter "ParsOnline" "${datacenters[9]}" ;;
        10) ping_datacenter "ParsOnline" "${datacenters[10]}" ;;
        *) echo "Invalid datacenter number." ;;
    esac
}

# Function to ping IPs of a selected datacenter
ping_datacenter() {
    datacenter_name=$1
    ips=$2

    echo "Pinging IPs of $datacenter_name..."

    for ip in $ips; do
        echo "Pinging $ip..."
        ping -c 4 $ip | grep 'packets transmitted'
    done
}

# Main execution starts here
select_datacenter

