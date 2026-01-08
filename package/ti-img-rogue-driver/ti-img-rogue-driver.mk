################################################################################
#
# ti-img-rogue-driver
#
################################################################################

TI_IMG_ROGUE_DRIVER_VERSION = a838ac0074db640ebd1b64be6364417b1bbca3cd
TI_IMG_ROGUE_DRIVER_SITE = https://git.ti.com/git/graphics/ti-img-rogue-driver.git
TI_IMG_ROGUE_DRIVER_SITE_METHOD = git
TI_IMG_ROGUE_DRIVER_LICENSE = MIT or GPL-2.0
TI_IMG_ROGUE_DRIVER_LICENSE_FILES = GPL-COPYING MIT-COPYING

TI_IMG_ROGUE_DRIVER_DEPENDENCIES = linux

TI_IMG_ROGUE_DRIVER_MAKE_OPTS = \
	$(LINUX_MAKE_FLAGS) \
	KERNELDIR=$(LINUX_DIR) \
	BUILD=release \
	PVR_BUILD_DIR=j722s_linux \
	WINDOW_SYSTEM=lws-generic

define TI_IMG_ROGUE_DRIVER_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TI_IMG_ROGUE_DRIVER_MAKE_OPTS) \
		-C $(@D)
endef

define TI_IMG_ROGUE_DRIVER_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TI_IMG_ROGUE_DRIVER_MAKE_OPTS) \
		-C $(LINUX_DIR) \
		M=$(@D)/binary_j722s_linux_lws-generic_release/target_aarch64/kbuild \
		modules_install
endef

$(eval $(generic-package))
