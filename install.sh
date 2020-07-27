echo "Please run as super user"
sleep 5
echo "Converting .hex to .hcd..."
hex2hcd BCM20702A1_001.002.014.1443.1467.hex -o BCM20702A1-0b05-17cb.hcd
echo "Done"
sleep 3

echo "Making Directory & Installing Converted File..."
sudo mkdir -p /lib/firmware/brcm/
sudo cp BCM20702A1-0b05-17cb.hcd /lib/firmware/brcm/BCM20702A1-0b05-17cb.hcd
echo "Done installing Driver"
sleep 3
echo "Installing pulse audio module"
sudo apt-get install pulseaudio-module-bluetooth -y
sleep 3
echo "Reboot Computer And Bluetooth Should Now Work"
sleep 10
exit
