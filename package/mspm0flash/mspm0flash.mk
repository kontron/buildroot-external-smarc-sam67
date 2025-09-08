################################################################################
#
# mspm0flash
#
################################################################################

MSPM0FLASH_VERSION = 03df84c7060e5722a0dca749fa95563faaf5c552
MSPM0FLASH_SITE = https://github.com/kontron/mspm0flash
MSPM0FLASH_SITE_METHOD = git
MSPM0FLASH_LICENSE = BSD-2-Clause
MSPM0FLASH_LICENSE_FILES = COPYING
MSPM0FLASH_REDISTRIBUTE = NO

define MSPM0FLASH_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define MSPM0FLASH_INSTALL_TARGET_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) DESTDIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
