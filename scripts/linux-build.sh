git checkout $1
make -C ~/linux/ -j 2
sudo make -C ~/linux/ headers_install
sudo make -C ~/linux/ modules_install
sudo make -C ~/linux/ install
