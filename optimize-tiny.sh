#!/bin/bash
systemctl disable bluetooth
systemctl disable cups
systemctl disable apt-daily.service
echo "vm.swappiness=10" >> /etc/sysctl.conf
