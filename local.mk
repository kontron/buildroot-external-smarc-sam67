define set-override-version-inner # PKG branch
	$(eval override $(1)_VERSION := $(shell git ls-remote $(2) refs/heads/$(3) | awk '{print $$1}'))
endef

set-override-version = $(call set-override-version-inner,$(call UPPERCASE,$(1)),$(2),$(3))

# Buildroot isn't able to automatically fetch the latest version. To ease
# development and CI setups, fetch the latest version on a given branch
# directly from the repository and override the package version with the
# commit id.
ifneq ($(USE_HEAD_VERSION),)
$(call set-override-version,uboot,https://github.com/kontron/u-boot-smarc-sam67.git,master)
$(call set-override-version,ti_k3_r5_loader,https://github.com/kontron/u-boot-smarc-sam67.git,master)
ifeq ($(SKIP_LINUX_HEAD_VERSION),)
$(call set-override-version,linux,https://github.com/kontron/linux-smarc-sam67.git,master)
endif
endif
