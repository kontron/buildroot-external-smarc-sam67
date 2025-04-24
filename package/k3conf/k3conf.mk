################################################################################
#
# k3conf
#
################################################################################

K3CONF_VERSION = e4a814ff42ef357ee453b6f2f809ecdfa624aa8c
K3CONF_SITE = https://git.ti.com/cgit/k3conf/k3conf/snapshot
K3CONF_SOURCE = k3conf-$(K3CONF_VERSION).tar.xz
K3CONF_LICENSE = BSD-3-Clause
K3CONF_LICENSE_FILES = LICENSE
K3CONF_SUPPORTS_IN_SOURCE_BUILD = NO

$(eval $(cmake-package))
