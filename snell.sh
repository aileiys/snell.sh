#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
mkdir /etc/snell/
apt-get install unzip
cd /usr/local/bin/
wget --no-check-certificate -O snell.zip https://github.com/surge-networks/snell/releases/download/1.0.1/snell-server-v1.0.1-linux-amd64.zip
unzip snell.zip
rm -f snell.zip
chmod +x snell-server
cd /etc/systemd/system

cat > snell.service<<-EOF
[Unit]
Description=Snell Server
After=network.target

[Service]
ExecStart=/usr/local/bin/snell-server -c /etc/snell/snell-server.conf
Restart=on-failure
RestartSec=1s

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl start snell
systemctl restart snell

cat /etc/snell/snell-server.conf
