cd ~/linux/
git checkout $1
make -j 2
sudo make headers_install
sudo make modules_install
sudo make install
