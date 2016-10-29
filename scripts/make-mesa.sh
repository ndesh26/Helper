~/mesa/autogen.sh --enable-dri3 --with-dri-drivers="radeon" --with-gallium-drivers="radeonsi" --with-egl-platforms="drm" --enable-vdpau --with-vdpau-libdir="/usr/lib64/vdpau"
make -C ~/mesa/ -j 2
sudo make -C ~/mesa/ install

