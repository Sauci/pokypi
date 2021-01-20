DESCRIPTION = "Copies prebuilt GO binary to rootfs"
LICENSE = "CLOSED"
SRC_URI = "https://github.com/Sauci/pokypiapp/releases/download/v${PV}/${PN}.zip"
SRC_URI[md5sum] = "2243b34c2f8ad7b7bdc266ba47d9ae88"
SRC_URI[sha256sum] = "3b1453b3e47f9325d74e3a5924e6595e794583cd340ac09fb28a80c7ca11772e"
S = "${WORKDIR}"
do_install() {
	install -d ${D}${bindir}
	install -m 0777 ${PN} ${D}${bindir}
}
INSANE_SKIP_${PN} = "ldflags"
INSANE_SKIP_${PN}-dev = "ldflags"
