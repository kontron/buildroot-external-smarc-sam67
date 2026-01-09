################################################################################
#
# ti-img-rogue-umlibs
#
################################################################################

TI_IMG_ROGUE_UMLIBS_VERSION = adcbb5c620ff172da4152c02a2fee8f42dc4c472
TI_IMG_ROGUE_UMLIBS_SITE = https://git.ti.com/git/graphics/ti-img-rogue-umlibs.git
TI_IMG_ROGUE_UMLIBS_SITE_METHOD = git
TI_IMG_ROGUE_UMLIBS_LICENSE = SGI, Khronos
TI_IMG_ROGUE_UMLIBS_LICENSE_FILES = LICENSE

TI_IMG_ROGUE_UMLIBS_PLATFORM = j722s_linux
TI_IMG_ROGUE_UMLIBS_WINDOW_SYSTEM = lws-generic

define TI_IMG_ROGUE_UMLIBS_INSTALL_TARGET_CMDS
	$(call SYSTEM_RSYNC,$(@D)/targetfs/$(TI_IMG_ROGUE_UMLIBS_PLATFORM)/$(TI_IMG_ROGUE_UMLIBS_WINDOW_SYSTEM)/release/,$(TARGET_DIR))
endef

$(eval $(generic-package))
