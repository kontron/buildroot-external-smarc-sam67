################################################################################
#
# k3conf
#
################################################################################

K3CONF_VERSION = f63ccd27cba9550de04e8dbb04bc6003d8b5168e
K3CONF_SITE = https://git.ti.com/cgit/k3conf/k3conf
K3CONF_SITE_METHOD = git
K3CONF_LICENSE = BSD-3-Clause
K3CONF_LICENSE_FILES = LICENSE
K3CONF_SUPPORTS_IN_SOURCE_BUILD = NO

$(eval $(cmake-package))
