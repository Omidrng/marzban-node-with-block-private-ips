#!/bin/bash

apt update -y
apt upgrade -y
apt install ufw -y

sudo timedatectl set-timezone UTC

bash <(curl -s https://raw.githubusercontent.com/Kiya6955/Abuse-Defender/main/abuse-defender.sh)

wget https://github.com/Heclalava/blockpublictorrent-iptables/raw/main/bt.sh && chmod +x bt.sh && bash bt.sh

bash <(curl -s https://raw.githubusercontent.com/Kiya6955/IR-ISP-Blocker/main/ir-isp-blocker.sh)

apt update -y; apt install wireguard-dkms wireguard-tools resolvconf -y; wget https://github.com/ViRb3/wgcf/releases/download/v2.2.21/wgcf_2.2.21_linux_amd64; chmod +x wgcf_2.2.21_linux_amd64; mv wgcf_2.2.21_linux_amd64 /usr/bin/wgcf; wgcf register --accept-tos; wgcf generate; sed -i '2i\Table = off' wgcf-profile.conf; mkdir /etc/wireguard; cp wgcf-profile.conf /etc/wireguard/warp.conf; systemctl enable --now wg-quick@warp

bash <(curl -Ls https://github.com/mikeesierrah/Marzban-scripts/raw/master/marzban-node.sh)


apt install ufw
ufw enable
ufw allow 31798/tcp
ufw allow 80
ufw allow 8080
ufw allow 2096
ufw allow 2082
ufw allow 8443
ufw allow 9528
ufw allow 15932
ufw allow 62050
ufw allow 62051



ufw deny out from any to 10.0.0.0/8
ufw deny out from any to 172.16.0.0/12
ufw deny out from any to 192.168.0.0/16
ufw deny out from any to 100.64.0.0/10
ufw deny out from any to 198.18.0.0/15
ufw deny out from any to 169.254.0.0/16
ufw deny out from any to 102.236.0.0/16
ufw deny out from any to 2.60.0.0/16
ufw deny out from any to 5.1.41.0/12



iptables -L -v -n

ufw status
