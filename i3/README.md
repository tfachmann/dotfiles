# i3-gaps

## .i3config

### Requirements:
The config is made for `i3-gaps`.
To download `i3-gaps` use the following bash script:

```
#!/bin/bash
# created for installing i3-gaps over Linux Mint 18.1
 
# run with sudo
 
#-------------------------------------------------------------------------------
 
export DEBIAN_FRONTEND=noninteractive
apt-get update -q
apt-get upgrade -q -y
 
# depencies of i3-gaps
add-apt-repository ppa:aguignard/ppa -y
apt-get update -q
apt-get install -q -y   -o Dpkg::Options::="--force-confdef" \
                        -o Dpkg::Options::="--force-confold" \
git automake libtool libxcb-xrm0 libxcb-xrm-dev
 
apt-get install -q -y   -o Dpkg::Options::="--force-confdef" \
                        -o Dpkg::Options::="--force-confold" \
libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev \
libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev \
libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev \
libxkbcommon-dev libxkbcommon-x11-dev autoconf
 
 
# install i3-gaps from source
 
# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
make install
 
# install misc. i3 packages
apt-get install -q -y   -o Dpkg::Options::="--force-confdef" \
                        -o Dpkg::Options::="--force-confold" \
i3lock i3status dmenu dunst
```

### Install:

```
mv ~/.config/i3/config ~/./config/i3/config_old
ln -s ~/git-repos/dotfiles/i3/.i3config ~/.config/i3/config
```

## i3status.conf

### Requirements:

```
sudo apt-get install i3status
```

### Install:

```
sudo mv /etc/i3status.conf /etc/i3status.conf_old
sudo ln -s ~/git-repos/dotfiles/i3/i3status.conf /etc/i3status.conf
```


## Other:

### Dark Firefox Theme:

```
https://github.com/horst3180/arc-firefox-theme
```

### Inverted Scrolling:

```
https://askubuntu.com/questions/91426/reverse-two-finger-scroll-direction-natural-scrolling
```
