git clone -b thud git://git.yoctoproject.org/poky poky
git clone -b thud git://git.yoctoproject.org/meta-raspberrypi poky/meta-raspberrypi
mkdir poky/build
cp -R conf poky/build
source oe-init-build-env build
bitbake rpi-basic-image
