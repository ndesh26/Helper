# Update the OS and add extra repos
sudo dnf update
sudo dnf config-manager --set-enable rpmfusion-free rpmfusion-free-updates rpmfusion-nonfree rpmfusion-nonfree-updates
sudo rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-24.noarch.rpm
sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/fedora/$releasever/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF
sudo tee /etc/yum.repos.d/google-chrome.repo <<-'EOF'
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF

# Install general class of programs
sudo dnf install vim git git-email mplayer ruby ruby-devel \
    openssl-devel mutt meld vlc i3 i3status dmenu i3lock xbacklight feh conky \
    libstdc++ libgcc glibc-devel libvdpau ddd libxcb-devel elfutils-libelf-devel \
    docker-engine docker-compose python google-chrome-stable qbittorrent \
    the_silver_searcher prozilla gnome-tweak-tool

# Download and install powerline shell and powerline fonts
cd ~
git clone https://github.com/banga/powerline-shell.git
mv powerline-shell .powerline
cd .powerline/
./install.py
cd ~ 
git clone https://github.com/powerline/fonts.git
mv fonts .fonts
cd .fonts/
./install.sh

# Cofigure Mesa
sudo dnf install flex bison imake libtool xorg-x11-proto-devel libdrm-devel \
  gcc-c++ xorg-x11-server-devel libXi-devel libXmu-devel libXdamage-devel git \
  expat-devel llvm-devel python-mako redhat-rpm-config libvdpau-devel libxshmfence-devel
cd ~/
git clone git://anongit.freedesktop.org/mesa/mesa
cd mesa/
./autogen.sh --enable-dri3 --with-dri-drivers="radeon" --with-gallium-drivers="radeonsi" --with-egl-platforms="drm" --enable-vdpau --with-vdpau-libdir="/usr/lib64/vdpau"
make -j 2
sudo make install

# Configure linux
git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
cd linux/
cp /boot/config* ./.config
make -j 2
sudo make headers_install
sudo make modules_install
sudo make install

# Install jekyll and rails
gem install jekyll jekyll-paginate jekyll-gist redcarpet rails

# Setup docker
sudo systemctl enable docker.service
sudo systemctl start docker
sudo groupadd docker
sudo usermod -aG docker ndesh
sudo systemctl enable docker

# Setup mutt
mkdir -p ~/.mutt/cache/headers
mkdir ~/.mutt/cache/bodies
touch ~/.mutt/certificates
touch ~/.mutt/muttrc

# Install sqlite3
sudo dnf install sqlite
sudo dnf install --allowerasing sqlite-devel

# Install pdflatex
sudo yum -y install texlive texlive-latex
sudo yum -y install texlive-collection-latex

# Get My projects
mkdir ~/rails
cd ~/rails
git clone https://ndesh418@bitbucket.org/ndesh418/oars.git
cd oars
docker-compose build
