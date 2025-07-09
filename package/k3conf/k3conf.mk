################################################################################
#
# k3conf
#
################################################################################

K3CONF_VERSION = e6abc1b87f1d5bc4c2ab5f1ebfbf5a70e437dcb4
K3CONF_SITE = https://git.ti.com/cgit/k3conf/k3conf/snapshot
K3CONF_SOURCE = k3conf-$(K3CONF_VERSION).tar.xz
K3CONF_LICENSE = BSD-3-Clause
K3CONF_LICENSE_FILES = LICENSE
K3CONF_SUPPORTS_IN_SOURCE_BUILD = NO

$(eval $(cmake-package))
