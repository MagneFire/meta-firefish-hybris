FILESEXTRAPATHS_prepend_firefish := "${THISDIR}/${PN}:"

SRC_URI_append_firefish = " file://nonplat_property_contexts \
    file://plat_property_contexts"

do_install_append_firefish() {
    install -m 0644 ${WORKDIR}/nonplat* ${D}/
    install -m 0644 ${WORKDIR}/plat* ${D}/
}

FILES_${PN} += "/nonplat* /plat*"
