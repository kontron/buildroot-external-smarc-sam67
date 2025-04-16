################################################################################
#
# k3conf
#
################################################################################

K3CONF_VERSION = 0.3
K3CONF_SITE = https://git.ti.com/cgit/k3conf/k3conf/snapshot
K3CONF_SOURCE = k3conf-$(K3CONF_VERSION).tar.xz
K3CONF_LICENSE = BSD-3-Clause
K3CONF_LICENSE_FILES = LICENSE
K3CONF_INSTALL_STAGING = NO
K3CONF_SUPPORTS_IN_SOURCE_BUILD = NO

$(eval $(cmake-package))
