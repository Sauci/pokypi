chmod -R 777 poky
chmod -R 777 meta-raspberrypi
mkdir -p build
cp -R conf build
source ./poky/oe-init-build-env ./build
bitbake rpi-basic-image
