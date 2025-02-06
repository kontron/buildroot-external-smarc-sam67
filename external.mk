include $(sort $(wildcard $(BR2_EXTERNAL_SMARC_SAM67_PATH)/package/*/*.mk))

define set-override-version-inner # PKG branch
	$(eval override $(1)_VERSION := $(shell git ls-remote $($(1)_ACTUAL_SOURCE_SITE) refs/heads/$(2) | awk '{print $$1}'))
endef

# get the latest commit hash id for the specified package
set-override-version = $(call set-override-version-inner,$(call UPPERCASE,$(1)),$(2))

ifneq ($(USE_DAILY_BUILD),)
$(call set-override-version,uboot,master)
$(call set-override-version,linux,master)
$(call set-override-version,ti_k3_r5_loader,master)
endif
