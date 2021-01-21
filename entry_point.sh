mkdir -p build
cp -R conf build
source ./poky/oe-init-build-env ./build
bitbake core-image-base
