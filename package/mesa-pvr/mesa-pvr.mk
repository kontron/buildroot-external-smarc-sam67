################################################################################
#
# mesa-pvr
#
################################################################################

# When updating the version, please also update mesa3d-headers
MESA_PVR_VERSION = 68af6a102c2298569e77d1aa8bccc1ff61438b3e
MESA_PVR_SITE = https://gitlab.freedesktop.org/StaticRocket/mesa.git
MESA_PVR_SITE_METHOD = git
MESA_PVR_LICENSE = MIT, SGI, Khronos
MESA_PVR_LICENSE_FILES = docs/license.rst

MESA_PVR_INSTALL_STAGING = YES

MESA_PVR_PROVIDES = libegl libgles

MESA_PVR_DEPENDENCIES = \
	host-bison \
	host-flex \
	host-python-mako \
	host-python-pyyaml \
	expat \
	libdrm \
	wayland \
	wayland-protocols \
	zlib

MESA_PVR_CONF_OPTS += \
	-Dllvm=disabled \
	-Dcpp_rtti=false \
	-Dgallium-opencl=disabled \
	-Dglx=disabled \
	-Dgallium-drivers=pvr \
	-Dgallium-extra-hud=true \
	-Dvulkan-drivers= \
	-Dopengl=true \
	-Dgallium-va=disabled \
	-Dplatforms=wayland \
	-Dgbm=enabled \
	-Degl=enabled \
	-Dgles1=enabled \
	-Dgles2=enabled \
	-Dvalgrind=disabled \
	-Dlibunwind=disabled \
	-Dgallium-vdpau=disabled \
	-Dlmsensors=disabled \
	-Dzstd=disabled \
	-Dglvnd=false \
	-Dshared-glapi=enabled \
	-Dglx-read-only-text=true \

MESA_PVR_CFLAGS = $(TARGET_CFLAGS)

$(eval $(meson-package))
$(eval $(host-meson-package))
