![Kontron](docs/logo.png)

# Kontron SMARC-sAM67 Buildroot External

This [external buildroot layer][1] provides a basic support package for the
SMARC-sAM67 board. It is an extenstion to buildroot which is provided
outside of the standard buildroot tree.

The [Kontron SMARC-sAM67][2] board is an upcoming product not yet
available.

## Install System Dependencies

The external is tested on Debian 12. The following system build
dependencies are required (by buildroot itself).

```
apt install which sed make binutils build-essential gcc g++ \
bash patch gzip bzip2 perl tar cpio python unzip rsync file \
bc wget libncurses5-dev git subversion
```

This layer was tested on buildroot version 2024.11.1

## Build

You have to clone buildroot and this layer. When building, use the
appropriate defconfig in the `buildroot-external-smarc-sal28/configs`
directory.

```
git clone https://gitlab.com/buildroot.org/buildroot.git -b 2025.08
git clone https://github.com/kontron/buildroot-external-smarc-sam67.git
mkdir build
cd build
make -C ../buildroot BR2_EXTERNAL=../buildroot-external-smarc-sam67 O=`pwd` kontron_smarc_sam67_defconfig
make
```

The resulting bootloader, kernel, root filesystem and SPI flash image will
be put in the `build/images` directory.


## License

This project is licensed under the [GPLv2][3] or later with exceptions. See
the `COPYING` file for more information. Buildroot is licensed under the
[GPLv2][3] or later with exceptions.


[1]: https://buildroot.org/downloads/manual/manual.html#outside-br-custom
[2]: https://www.kontron.com/en/products/smarc-sam67/p186374
[3]: https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html
