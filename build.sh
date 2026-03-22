#!/bin/bash
set -e
sudo apt update
sudo apt install -y live-build
rm -rf config/.build config/.cache

lb config \
 --distribution bookworm \
 --binary-images iso-hybrid \
 --debian-installer live \
 --archive-areas "main contrib non-free"

chmod +x config/includes.chroot/usr/local/bin/*

# auto-run launcher
cat << 'EOF' > config/includes.chroot/etc/profile.d/lytee.sh
#!/bin/bash
/usr/local/bin/launcher.sh
EOF
chmod +x config/includes.chroot/etc/profile.d/lytee.sh

# first boot service
cat << EOF > config/includes.chroot/etc/systemd/system/lytee-firstboot.service
[Unit]
Description=Lytee First Boot
After=network.target
[Service]
ExecStart=/usr/local/bin/firstboot.sh
Type=oneshot
[Install]
WantedBy=multi-user.target
EOF

mkdir -p config/includes.chroot/etc/systemd/system/multi-user.target.wants
ln -sf /etc/systemd/system/lytee-firstboot.service config/includes.chroot/etc/systemd/system/multi-user.target.wants/

sudo lb build
