FILESEXTRAPATHS_prepend_firefish := "${THISDIR}/${PN}:"
COMPATIBLE_MACHINE_firefish = "firefish"

RDEPENDS_${PN}_append_firefish += "msm-fb-refresher"

SRC_URI_append_firefish += " file://init.machine.sh"

do_install_append_firefish() {
    install -m 0755 ${WORKDIR}/init.machine.sh ${D}/init.machine
}

FILES_${PN} += "/init.machine"