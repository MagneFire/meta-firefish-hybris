FILESEXTRAPATHS_prepend_firefish := "${THISDIR}/${PN}:"
SRC_URI_append_firefish = " file://70-input.rules \
                            file://journald.conf"

do_install_append_firefish() {
	install -m 0644 ${WORKDIR}/70-input.rules ${D}${sysconfdir}/udev/rules.d/70-input.rules
	install -m 0644 ${WORKDIR}/journald.conf ${D}${sysconfdir}/systemd/journald.conf
}
