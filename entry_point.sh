git clone -b thud git://git.yoctoproject.org/poky poky
git clone -b thud git://git.yoctoproject.org/meta-raspberrypi poky/meta-raspberrypi
mkdir build
cp -R conf build
source ./poky/oe-init-build-env ./build
bitbake rpi-basic-image
