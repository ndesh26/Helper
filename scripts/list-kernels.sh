sudo find /boot/ -name 'System.map-*' | cut -c 18- > temp.txt
x=1
echo "The kernels installed in /boot:"
while read line
do
    echo $x"." $line
    x=$(($x+1))
done < temp.txt
rm temp.txt
