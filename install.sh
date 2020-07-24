

echo "Please run as super user & disconnect Asus BT-400"
sleep 5
echo "Converting .hex to .hcd..."
hex2hcd BCM20702A1_001.002.014.1443.1467.hex -o BCM20702A1-0b05-17cb.hcd
echo "Done"
sleep 3

echo "Making Directory & Installing Converted File..."
sudo mkdir -p /lib/firmware/brcm/
sudo cp BCM20702A1-0b05-17cb.hcd /usr/lib/firmware/brcm/BCM20702A1-0b05-17cb.hcd
echo "Done installing Driver Should work now please plug in your Asus BT-400 Now"
sleep 10
exit
