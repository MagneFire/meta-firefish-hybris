FILESEXTRAPATHS_prepend_firefish := "${THISDIR}/brcm-patchram-plus:"
SRC_URI_append_firefish = " file://patchram.service "
CFLAGS_append_firefish = " -DLPM_SWIFT"
