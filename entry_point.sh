mkdir -p build
cp -R conf build
source ./poky/oe-init-build-env ./build
bitbake rpi-basic-image
