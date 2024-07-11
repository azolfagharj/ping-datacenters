# Ping Datacenters Script

## Description
This script, `ping_datacenters.sh`, is designed to ping IP addresses of selected datacenters and display the packet loss results. It provides a simple way to check the connectivity and performance of various datacenters by sending ICMP echo requests (pings) to their IP addresses.

## Features
- Allows user to select a datacenter from a predefined list.
- Pings multiple IP addresses associated with the selected datacenter.
- Displays the number of packets transmitted, received, and the packet loss percentage for each IP.
- Easy to use and configure.
## Usage
1. Clone the repository to your local machine or server.
2. Navigate to the directory containing the script.
3. Make the script executable: `chmod +x ping_datacenters.sh`
4. Run the script: `./ping_datacenters.sh`
5. Select the datacenter by entering the corresponding number.
6. The script will ping the IP addresses of the selected datacenter and display the results.

## Datacenters and IP Addresses
The script supports the following datacenters:
- **Asiatech**
  - IPs: 171.22.26.1
- **Asiatech2**
  - IPs: 130.185.75.1, 130.185.78.1, 171.22.24.1, 185.105.239.1
- **Asiatech3**
  - IPs: 158.255.74.1, 176.97.218.1, 185.190.39.1, 185.204.197.1, 185.231.115.1, 185.7.212.1
- **Asiatech4**
  - IPs: 185.164.73.1, 185.19.201.1
- **Asiatech5**
  - IPs: 146.19.212.1, 185.164.72.1, 185.252.86.1
- **Iranian**
  - IPs: 171.22.26.1, 178.239.151.1, 185.164.73.1, 185.19.201.1, 185.243.48.1
- **Mobinnet**
  - IPs: 130.185.72.254, 130.185.73.254, 130.185.74.254, 130.185.76.254, 130.185.77.1, 130.185.79.1, 171.22.25.1, 171.22.27.1, 185.208.174.1, 185.208.175.1, 185.8.172.1, 185.8.173.254, 185.8.174.1, 185.8.175.1
- **ParsOnline**
  - IPs: 178.239.158.1, 185.13.230.41



## Example
```sh
$ ./ping_datacenters.sh
==============================================
    Welcome to the Ping Datacenters Script
    Author: A.Zolfaghar
    Date: 2024-07-11
==============================================

Please select your datacenter:
1) Asiatech
2) Asiatech2
3) Asiatech3
4) Asiatech4
5) Asiatech5
6) Iranian
7) Mobinnet
8) ParsOnline
Enter the number of the datacenter: 2
Pinging IPs of Asiatech2...
Pinging 130.185.75.1...
4 packets transmitted, 4 received, 0% packet loss, time 3004ms
Pinging 130.185.78.1...
4 packets transmitted, 4 received, 0% packet loss, time 3002ms
Pinging 171.22.24.1...
4 packets transmitted, 4 received, 0% packet loss, time 3003ms
Pinging 185.105.239.1...
4 packets transmitted, 4 received, 0% packet loss, time 3001ms
