sudo find /boot/ -name 'System.map-*' | cut -c 18- > temp.txt
x=1
while read line
do
    echo $x"." $line
    x=$(($x+1))
done < temp.txt
echo -n "Enter the number of the kernel to be removed: " 
read z
echo -n "Are you sure (y/n): " 
x=$(sed "${z}q;d" temp.txt)
read z
if [ z='y' ]
then
    sudo rm -rf "/boot/initramfs-${x}.img"
    sudo rm -rf "/boot/vmlinuz-${x}"
    sudo rm -rf "/boot/System.map-${x}"
fi
rm temp.txt
./grub-init.sh
