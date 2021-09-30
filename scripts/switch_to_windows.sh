#!/bin/bash 

WINDOWS_TITLE=$(grep -i 'windows' /boot/grub/grub.cfg|grep "^[^#;]"|cut -d"'" -f2) 
sudo grub-reboot "$WINDOWS_TITLE" 
echo "Your computer will reboot into ${WINDOWS_TITLE} in 3 seconds, press Ctrl+C to abort."
sleep 3 && sudo reboot
