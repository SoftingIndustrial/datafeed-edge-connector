# Softing Open Source License Declaration for **dataFEED edgeConnector** Product Family

Many open source component copyrights refer to one of the common public
licenses contained in the Docker images in the directory
`/usr/share/common-licenses/`. To avoid the need to copy and or read an
identical license text file several times, those licenses are collected
in `/usr/share/common-licenses/` within the Docker images. Thus, if a
copyright file refers to one of those licenses, please look into this directory.

You can download the sources of all open source-based binaries, which have been
got from Ubuntu and Debian within the Softing Docker image.
To do this, use the following commands:

```bash
mkdir source-folder
cd source-folder
docker run --rm -it -w $(pwd) -v $(pwd):$(pwd) softingindustrial/edgeconnector-siemens:latest getOpenSourcePackages.sh
```

To fully comply with the open licensing terms, Softing also offers for at least
three years, to give any third party, for a charge no more than the Softing cost
of physically performing source distribution, a complete machine-readable copy of
the corresponding source code.
To use this offer, please contact [info.automation@softing.com](mailto:info.automation@softing.com).

For the versions from 1.00 up to 3.10, the following components are used:

| Name | Source | License | Change Info |
| ---- | ------ | ------- | ----------- |
|      | (Link to the maintainer page or the source were Softing has got the software from) |  | (if modified by Softing) |
| jsoncpp-0 | [https://github.com/open-source-parsers/jsoncpp](https://github.com/open-source-parsers/jsoncpp) | MIT | |
| libfcgi   | [https://github.com/toshic/libfcgi](https://github.com/toshic/libfcgi) | [LICENSE.TERMS](https://github.com/toshic/libfcgi/blob/master/LICENSE.TERMS) | |
| libzip | [https://github.com/nih-at/libzip](https://github.com/nih-at/libzip) | BSD | |
| adduser | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/adduser/copyright | unmodified, packet installed as provided by Ubuntu |
| apt | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/apt/copyright | unmodified, packet installed as provided by Ubuntu |
| base-files | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/base-files/copyright | unmodified, packet installed as provided by Ubuntu |
| base-passwd | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/base-passwd/copyright | unmodified, packet installed as provided by Ubuntu |
| bash | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/bash/copyright | unmodified, packet installed as provided by Ubuntu |
| bsdutils | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/bsdutils/copyright | unmodified, packet installed as provided by Ubuntu |
| bzip2 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/bzip2/copyright | unmodified, packet installed as provided by Ubuntu |
| coreutils | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/coreutils/copyright | unmodified, packet installed as provided by Ubuntu |
| dash | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/dash/copyright | unmodified, packet installed as provided by Ubuntu |
| debconf | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/debconf/copyright | unmodified, packet installed as provided by Ubuntu |
| debianutils | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/debianutils/copyright | unmodified, packet installed as provided by Ubuntu |
| diffutils | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/diffutils/copyright | unmodified, packet installed as provided by Ubuntu |
| dpkg | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/dpkg/copyright | unmodified, packet installed as provided by Ubuntu |
| e2fsprogs | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/e2fsprogs/copyright | unmodified, packet installed as provided by Ubuntu |
| fdisk | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/fdisk/copyright | unmodified, packet installed as provided by Ubuntu |
| findutils | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/findutils/copyright | unmodified, packet installed as provided by Ubuntu |
| fontconfig-config | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/fontconfig-config/copyright | unmodified, packet installed as provided by Ubuntu |
| fonts-dejavu-core | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/fonts-dejavu-core/copyright | unmodified, packet installed as provided by Ubuntu |
| gcc-8-base | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/gcc-8-base/copyright | unmodified, packet installed as provided by Ubuntu |
| gpgv | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/gpgv/copyright | unmodified, packet installed as provided by Ubuntu |
| grep | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/grep/copyright | unmodified, packet installed as provided by Ubuntu |
| gzip | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/gzip/copyright | unmodified, packet installed as provided by Ubuntu |
| hostname | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/hostname/copyright | unmodified, packet installed as provided by Ubuntu |
| init-system-helpers | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/init-system-helpers/copyright | unmodified, packet installed as provided by Ubuntu |
| iproute2 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/iproute2/copyright | unmodified, packet installed as provided by Ubuntu |
| libacl1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libacl1/copyright | unmodified, packet installed as provided by Ubuntu |
| libapt-pkg5.0 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libapt-pkg5.0/copyright | unmodified, packet installed as provided by Ubuntu |
| libattr1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libattr1/copyright | unmodified, packet installed as provided by Ubuntu |
| libaudit-common | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libaudit-common/copyright | unmodified, packet installed as provided by Ubuntu |
| libaudit1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libaudit1/copyright | unmodified, packet installed as provided by Ubuntu |
| libblkid1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libblkid1/copyright | unmodified, packet installed as provided by Ubuntu |
| libbsd0 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libbsd0/copyright | unmodified, packet installed as provided by Ubuntu |
| libbz2-1.0 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libbz2-1.0/copyright | unmodified, packet installed as provided by Ubuntu |
| libc-bin | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libc-bin/copyright | unmodified, packet installed as provided by Ubuntu |
| libc6 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libc6/copyright | unmodified, packet installed as provided by Ubuntu |
| libcap-ng0 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libcap-ng0/copyright | unmodified, packet installed as provided by Ubuntu |
| libcom-err2 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libcom-err2/copyright | unmodified, packet installed as provided by Ubuntu |
| libdb5.3 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libdb5.3/copyright | unmodified, packet installed as provided by Ubuntu |
| libdebconfclient0 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libdebconfclient0/copyright | unmodified, packet installed as provided by Ubuntu |
| libelf1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libelf1/copyright | unmodified, packet installed as provided by Ubuntu |
| libexpat1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libexpat1/copyright | unmodified, packet installed as provided by Ubuntu |
| libext2fs2 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libext2fs2/copyright | unmodified, packet installed as provided by Ubuntu |
| libfdisk1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libfdisk1/copyright | unmodified, packet installed as provided by Ubuntu |
| libffi6 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libffi6/copyright | unmodified, packet installed as provided by Ubuntu |
| libfontconfig1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libfontconfig1/copyright | unmodified, packet installed as provided by Ubuntu |
| libfreetype6 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libfreetype6/copyright | unmodified, packet installed as provided by Ubuntu |
| libgcrypt20 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libgcrypt20/copyright | unmodified, packet installed as provided by Ubuntu |
| libgd3 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libgd3/copyright | unmodified, packet installed as provided by Ubuntu |
| libgeoip1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libgeoip1/copyright | unmodified, packet installed as provided by Ubuntu |
| libgmp10 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libgmp10/copyright | unmodified, packet installed as provided by Ubuntu |
| libgnutls30 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libgnutls30/copyright | unmodified, packet installed as provided by Ubuntu |
| libgpg-error0 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libgpg-error0/copyright | unmodified, packet installed as provided by Ubuntu |
| libicu60 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libicu60/copyright | unmodified, packet installed as provided by Ubuntu |
| libidn2-0 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libidn2-0/copyright | unmodified, packet installed as provided by Ubuntu |
| libjbig0 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libjbig0/copyright | unmodified, packet installed as provided by Ubuntu |
| libjpeg-turbo8 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libjpeg-turbo8/copyright | unmodified, packet installed as provided by Ubuntu |
| libjpeg8 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libjpeg8/copyright | unmodified, packet installed as provided by Ubuntu |
| liblz4-1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/liblz4-1/copyright | unmodified, packet installed as provided by Ubuntu |
| liblzma5 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/liblzma5/copyright | unmodified, packet installed as provided by Ubuntu |
| libmnl0 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libmnl0/copyright | unmodified, packet installed as provided by Ubuntu |
| libmount1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libmount1/copyright | unmodified, packet installed as provided by Ubuntu |
| libnettle6 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libnettle6/copyright | unmodified, packet installed as provided by Ubuntu |
| libnginx-mod-http-geoip | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libnginx-mod-http-geoip/copyright | unmodified, packet installed as provided by Ubuntu |
| libnginx-mod-http-image-filter | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libnginx-mod-http-image-filter/copyright | unmodified, packet installed as provided by Ubuntu |
| libnginx-mod-http-xslt-filter | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libnginx-mod-http-xslt-filter/copyright | unmodified, packet installed as provided by Ubuntu |
| libnginx-mod-mail | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libnginx-mod-mail/copyright | unmodified, packet installed as provided by Ubuntu |
| libnginx-mod-stream | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libnginx-mod-stream/copyright | unmodified, packet installed as provided by Ubuntu |
| libp11-kit0 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libp11-kit0/copyright | unmodified, packet installed as provided by Ubuntu |
| libpam-modules-bin | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libpam-modules-bin/copyright | unmodified, packet installed as provided by Ubuntu |
| libpam-modules | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libpam-modules/copyright | unmodified, packet installed as provided by Ubuntu |
| libpam-runtime | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libpam-runtime/copyright | unmodified, packet installed as provided by Ubuntu |
| libpam0g | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libpam0g/copyright | unmodified, packet installed as provided by Ubuntu |
| libpcre3 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libpcre3/copyright | unmodified, packet installed as provided by Ubuntu |
| libpng16-16 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libpng16-16/copyright | unmodified, packet installed as provided by Ubuntu |
| libprocps6 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libprocps6/copyright | unmodified, packet installed as provided by Ubuntu |
| libseccomp2 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libseccomp2/copyright | unmodified, packet installed as provided by Ubuntu |
| libselinux1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libselinux1/copyright | unmodified, packet installed as provided by Ubuntu |
| libsemanage-common | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libsemanage-common/copyright | unmodified, packet installed as provided by Ubuntu |
| libsemanage1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libsemanage1/copyright | unmodified, packet installed as provided by Ubuntu |
| libsepol1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libsepol1/copyright | unmodified, packet installed as provided by Ubuntu |
| libsmartcols1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libsmartcols1/copyright | unmodified, packet installed as provided by Ubuntu |
| libss2 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libss2/copyright | unmodified, packet installed as provided by Ubuntu |
| libssl1.1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libssl1.1/copyright | unmodified, packet installed as provided by Ubuntu |
| libsystemd0 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libsystemd0/copyright | unmodified, packet installed as provided by Ubuntu |
| libtasn1-6 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libtasn1-6/copyright | unmodified, packet installed as provided by Ubuntu |
| libtiff5 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libtiff5/copyright | unmodified, packet installed as provided by Ubuntu |
| libtinfo5 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libtinfo5/copyright | unmodified, packet installed as provided by Ubuntu |
| libudev1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libudev1/copyright | unmodified, packet installed as provided by Ubuntu |
| libunistring2 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libunistring2/copyright | unmodified, packet installed as provided by Ubuntu |
| libuuid1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libuuid1/copyright | unmodified, packet installed as provided by Ubuntu |
| libwebp6 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libwebp6/copyright | unmodified, packet installed as provided by Ubuntu |
| libx11-6 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libx11-6/copyright | unmodified, packet installed as provided by Ubuntu |
| libx11-data | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libx11-data/copyright | unmodified, packet installed as provided by Ubuntu |
| libxau6 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libxau6/copyright | unmodified, packet installed as provided by Ubuntu |
| libxcb1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libxcb1/copyright | unmodified, packet installed as provided by Ubuntu |
| libxdmcp6 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libxdmcp6/copyright | unmodified, packet installed as provided by Ubuntu |
| libxml2 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libxml2/copyright | unmodified, packet installed as provided by Ubuntu |
| libxpm4 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libxpm4/copyright | unmodified, packet installed as provided by Ubuntu |
| libxslt1.1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libxslt1.1/copyright | unmodified, packet installed as provided by Ubuntu |
| libzstd1 | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/libzstd1/copyright | unmodified, packet installed as provided by Ubuntu |
| login | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/login/copyright | unmodified, packet installed as provided by Ubuntu |
| lsb-base | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/lsb-base/copyright | unmodified, packet installed as provided by Ubuntu |
| mawk | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/mawk/copyright | unmodified, packet installed as provided by Ubuntu |
| mount | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/mount/copyright | unmodified, packet installed as provided by Ubuntu |
| multiarch-support | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/multiarch-support/copyright | unmodified, packet installed as provided by Ubuntu |
| ncurses-base | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/ncurses-base/copyright | unmodified, packet installed as provided by Ubuntu |
| ncurses-bin | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/ncurses-bin/copyright | unmodified, packet installed as provided by Ubuntu |
| nginx-common | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/nginx-common/copyright | unmodified, packet installed as provided by Ubuntu |
| nginx-core | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/nginx-core/copyright | unmodified, packet installed as provided by Ubuntu |
| nginx | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/nginx/copyright | unmodified, packet installed as provided by Ubuntu |
| passwd | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/passwd/copyright | unmodified, packet installed as provided by Ubuntu |
| perl | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/perl/copyright | unmodified, packet installed as provided by Ubuntu |
| procps | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/procps/copyright | unmodified, packet installed as provided by Ubuntu |
| sed | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/sed/copyright | unmodified, packet installed as provided by Ubuntu |
| sensible-utils | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/sensible-utils/copyright | unmodified, packet installed as provided by Ubuntu |
| sysvinit-utils | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/sysvinit-utils/copyright | unmodified, packet installed as provided by Ubuntu |
| tar | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/tar/copyright | unmodified, packet installed as provided by Ubuntu |
| ubuntu-keyring | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/ubuntu-keyring/copyright | unmodified, packet installed as provided by Ubuntu |
| ucf | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/ucf/copyright | unmodified, packet installed as provided by Ubuntu |
| util-linux | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/util-linux/copyright | unmodified, packet installed as provided by Ubuntu |
| zlib1g | [UBUNTU](https://ubuntu.com) | Within image: /usr/share/doc/zlib1g/copyright | unmodified, packet installed as provided by Ubuntu |

For the versions starting from 3.20, the following components are used:

| Name | Source | License | Change Info |
| ---- | ------ | ------- | ----------- |
|      | (Link to the maintainer page or the source were we have got the software from) |  | (if modified by Softing) |
| jsoncpp-0 | <https://github.com/open-source-parsers/jsoncpp> | MIT | |
| libfcgi   | <https://github.com/toshic/libfcgi> | [LICENSE.TERMS](https://github.com/toshic/libfcgi/blob/master/LICENSE.TERMS) | |
| libzip | <https://github.com/nih-at/libzip> | BSD | |
| parson | <https://github.com/kgabis/parson> | MIT | |
| sol2 | <https://github.com/ThePhD/sol2> | MIT | |
| openLDAP (ldapc++) | <https://git.openldap.org/nivanova/openldap/-/tree/master/contrib/ldapc%2B%2B> | [TheOpenLDAP Public License](https://git.openldap.org/nivanova/openldap/-/blob/master/LICENSE) | |
| curl | https://curl.haxx.se/docs/copyright.html | MIT like | |
| paho | https://www.eclipse.org/org/documents/epl-v10.php | Eclipse Public License - v 1.0| |
| prometheus-cpp | https://github.com/jupp0r/prometheus-cpp/blob/master/LICENSE | MIT | |
| adduser | [Debian](https://packages.debian.org/bullseye/adduser) | Within image: /usr/share/doc/adduser/copyright | unmodified, packet installed as provided by Debian |
| apt | [Debian](https://packages.debian.org/bullseye/apt) | Within image: /usr/share/doc/apt/copyright | unmodified, packet installed as provided by Debian |
| base-files | [Debian](https://packages.debian.org/bullseye/base-files) | Within image: /usr/share/doc/base-files/copyright | unmodified, packet installed as provided by Debian |
| base-passwd | [Debian](https://packages.debian.org/bullseye/base-passwd) | Within image: /usr/share/doc/base-passwd/copyright | unmodified, packet installed as provided by Debian |
| bash | [Debian](https://packages.debian.org/bullseye/bash) | Within image: /usr/share/doc/bash/copyright | unmodified, packet installed as provided by Debian |
| bsdutils | [Debian](https://packages.debian.org/bullseye/bsdutils) | Within image: /usr/share/doc/bsdutils/copyright | unmodified, packet installed as provided by Debian |
| coreutils | [Debian](https://packages.debian.org/bullseye/coreutils) | Within image: /usr/share/doc/coreutils/copyright | unmodified, packet installed as provided by Debian |
| dash | [Debian](https://packages.debian.org/bullseye/dash) | Within image: /usr/share/doc/dash/copyright | unmodified, packet installed as provided by Debian |
| debconf | [Debian](https://packages.debian.org/bullseye/debconf) | Within image: /usr/share/doc/debconf/copyright | unmodified, packet installed as provided by Debian |
| debian-archive-keyring | [Debian](https://packages.debian.org/bullseye/debian-archive-keyring) | Within image: /usr/share/doc/debian-archive-keyring/copyright | unmodified, packet installed as provided by Debian |
| debianutils | [Debian](https://packages.debian.org/bullseye/debianutils) | Within image: /usr/share/doc/debianutils/copyright | unmodified, packet installed as provided by Debian |
| diffutils | [Debian](https://packages.debian.org/bullseye/diffutils) | Within image: /usr/share/doc/diffutils/copyright | unmodified, packet installed as provided by Debian |
| dpkg | [Debian](https://packages.debian.org/bullseye/dpkg) | Within image: /usr/share/doc/dpkg/copyright | unmodified, packet installed as provided by Debian |
| e2fsprogs | [Debian](https://packages.debian.org/bullseye/e2fsprogs) | Within image: /usr/share/doc/e2fsprogs/copyright | unmodified, packet installed as provided by Debian |
| findutils | [Debian](https://packages.debian.org/bullseye/findutils) | Within image: /usr/share/doc/findutils/copyright | unmodified, packet installed as provided by Debian |
| fontconfig-config | [Debian](https://packages.debian.org/bullseye/fontconfig-config) | Within image: /usr/share/doc/fontconfig-config/copyright | unmodified, packet installed as provided by Debian |
| fonts-dejavu-core | [Debian](https://packages.debian.org/bullseye/fonts-dejavu-core) | Within image: /usr/share/doc/fonts-dejavu-core/copyright | unmodified, packet installed as provided by Debian |
| gcc-10-base | [Debian](https://packages.debian.org/bullseye/gcc-10-base) | Within image: /usr/share/doc/gcc-10-base/copyright | unmodified, packet installed as provided by Debian |
| gcc-9-base | [Debian](https://packages.debian.org/bullseye/gcc-9-base) | Within image: /usr/share/doc/gcc-9-base/copyright | unmodified, packet installed as provided by Debian |
| gpgv | [Debian](https://packages.debian.org/bullseye/gpgv) | Within image: /usr/share/doc/gpgv/copyright | unmodified, packet installed as provided by Debian |
| grep | [Debian](https://packages.debian.org/bullseye/grep) | Within image: /usr/share/doc/grep/copyright | unmodified, packet installed as provided by Debian |
| gzip | [Debian](https://packages.debian.org/bullseye/gzip) | Within image: /usr/share/doc/gzip/copyright | unmodified, packet installed as provided by Debian |
| hostname | [Debian](https://packages.debian.org/bullseye/hostname) | Within image: /usr/share/doc/hostname/copyright | unmodified, packet installed as provided by Debian |
| init-system-helpers | [Debian](https://packages.debian.org/bullseye/init-system-helpers) | Within image: /usr/share/doc/init-system-helpers/copyright | unmodified, packet installed as provided by Debian |
| iproute2 | [Debian](https://packages.debian.org/bullseye/iproute2) | Within image: /usr/share/doc/iproute2/copyright | unmodified, packet installed as provided by Debian |
| libacl1 | [Debian](https://packages.debian.org/bullseye/libacl1) | Within image: /usr/share/doc/libacl1/copyright | unmodified, packet installed as provided by Debian |
| libapt-pkg6.0 | [Debian](https://packages.debian.org/bullseye/libapt-pkg6.0) | Within image: /usr/share/doc/libapt-pkg6.0/copyright | unmodified, packet installed as provided by Debian |
| libattr1 | [Debian](https://packages.debian.org/bullseye/libattr1) | Within image: /usr/share/doc/libattr1/copyright | unmodified, packet installed as provided by Debian |
| libaudit-common | [Debian](https://packages.debian.org/bullseye/libaudit-common) | Within image: /usr/share/doc/libaudit-common/copyright | unmodified, packet installed as provided by Debian |
| libaudit1 | [Debian](https://packages.debian.org/bullseye/libaudit1) | Within image: /usr/share/doc/libaudit1/copyright | unmodified, packet installed as provided by Debian |
| libblkid1 | [Debian](https://packages.debian.org/bullseye/libblkid1) | Within image: /usr/share/doc/libblkid1/copyright | unmodified, packet installed as provided by Debian |
| libbpf0 | [Debian](https://packages.debian.org/bullseye/libbpf0) | Within image: /usr/share/doc/libbpf0/copyright | unmodified, packet installed as provided by Debian |
| libbrotli1 | [Debian](https://packages.debian.org/bullseye/libbrotli1) | Within image: /usr/share/doc/libbrotli1/copyright | unmodified, packet installed as provided by Debian |
| libbsd0 | [Debian](https://packages.debian.org/bullseye/libbsd0) | Within image: /usr/share/doc/libbsd0/copyright | unmodified, packet installed as provided by Debian |
| libbz2-1.0 | [Debian](https://packages.debian.org/bullseye/libbz2-1.0) | Within image: /usr/share/doc/libbz2-1.0/copyright | unmodified, packet installed as provided by Debian |
| libc-bin | [Debian](https://packages.debian.org/bullseye/libc-bin) | Within image: /usr/share/doc/libc-bin/copyright | unmodified, packet installed as provided by Debian |
| libc6 | [Debian](https://packages.debian.org/bullseye/libc6) | Within image: /usr/share/doc/libc6/copyright | unmodified, packet installed as provided by Debian |
| libcap-ng0 | [Debian](https://packages.debian.org/bullseye/libcap-ng0) | Within image: /usr/share/doc/libcap-ng0/copyright | unmodified, packet installed as provided by Debian |
| libcap2-bin | [Debian](https://packages.debian.org/bullseye/libcap2-bin) | Within image: /usr/share/doc/libcap2-bin/copyright | unmodified, packet installed as provided by Debian |
| libcap2 | [Debian](https://packages.debian.org/bullseye/libcap2) | Within image: /usr/share/doc/libcap2/copyright | unmodified, packet installed as provided by Debian |
| libcom-err2 | [Debian](https://packages.debian.org/bullseye/libcom-err2) | Within image: /usr/share/doc/libcom-err2/copyright | unmodified, packet installed as provided by Debian |
| libcrypt1 | [Debian](https://packages.debian.org/bullseye/libcrypt1) | Within image: /usr/share/doc/libcrypt1/copyright | unmodified, packet installed as provided by Debian |
| libdb5.3 | [Debian](https://packages.debian.org/bullseye/libdb5.3) | Within image: /usr/share/doc/libdb5.3/copyright | unmodified, packet installed as provided by Debian |
| libdebconfclient0 | [Debian](https://packages.debian.org/bullseye/libdebconfclient0) | Within image: /usr/share/doc/libdebconfclient0/copyright | unmodified, packet installed as provided by Debian |
| libdeflate0 | [Debian](https://packages.debian.org/bullseye/libdeflate0) | Within image: /usr/share/doc/libdeflate0/copyright | unmodified, packet installed as provided by Debian |
| libelf1 | [Debian](https://packages.debian.org/bullseye/libelf1) | Within image: /usr/share/doc/libelf1/copyright | unmodified, packet installed as provided by Debian |
| libexpat1 | [Debian](https://packages.debian.org/bullseye/libexpat1) | Within image: /usr/share/doc/libexpat1/copyright | unmodified, packet installed as provided by Debian |
| libext2fs2 | [Debian](https://packages.debian.org/bullseye/libext2fs2) | Within image: /usr/share/doc/libext2fs2/copyright | unmodified, packet installed as provided by Debian |
| libffi7 | [Debian](https://packages.debian.org/bullseye/libffi7) | Within image: /usr/share/doc/libffi7/copyright | unmodified, packet installed as provided by Debian |
| libfontconfig1 | [Debian](https://packages.debian.org/bullseye/libfontconfig1) | Within image: /usr/share/doc/libfontconfig1/copyright | unmodified, packet installed as provided by Debian |
| libfreetype6 | [Debian](https://packages.debian.org/bullseye/libfreetype6) | Within image: /usr/share/doc/libfreetype6/copyright | unmodified, packet installed as provided by Debian |
| libgcrypt20 | [Debian](https://packages.debian.org/bullseye/libgcrypt20) | Within image: /usr/share/doc/libgcrypt20/copyright | unmodified, packet installed as provided by Debian |
| libgd3 | [Debian](https://packages.debian.org/bullseye/libgd3) | Within image: /usr/share/doc/libgd3/copyright | unmodified, packet installed as provided by Debian |
| libgeoip1 | [Debian](https://packages.debian.org/bullseye/libgeoip1) | Within image: /usr/share/doc/libgeoip1/copyright | unmodified, packet installed as provided by Debian |
| libgmp10 | [Debian](https://packages.debian.org/bullseye/libgmp10) | Within image: /usr/share/doc/libgmp10/copyright | unmodified, packet installed as provided by Debian |
| libgnutls30 | [Debian](https://packages.debian.org/bullseye/libgnutls30) | Within image: /usr/share/doc/libgnutls30/copyright | unmodified, packet installed as provided by Debian |
| libgpg-error0 | [Debian](https://packages.debian.org/bullseye/libgpg-error0) | Within image: /usr/share/doc/libgpg-error0/copyright | unmodified, packet installed as provided by Debian |
| libgssapi-krb5-2 | [Debian](https://packages.debian.org/bullseye/libgssapi-krb5-2) | Within image: /usr/share/doc/libgssapi-krb5-2/copyright | unmodified, packet installed as provided by Debian |
| libhogweed6 | [Debian](https://packages.debian.org/bullseye/libhogweed6) | Within image: /usr/share/doc/libhogweed6/copyright | unmodified, packet installed as provided by Debian |
| libicu67 | [Debian](https://packages.debian.org/bullseye/libicu67) | Within image: /usr/share/doc/libicu67/copyright | unmodified, packet installed as provided by Debian |
| libidn2-0 | [Debian](https://packages.debian.org/bullseye/libidn2-0) | Within image: /usr/share/doc/libidn2-0/copyright | unmodified, packet installed as provided by Debian |
| libjbig0 | [Debian](https://packages.debian.org/bullseye/libjbig0) | Within image: /usr/share/doc/libjbig0/copyright | unmodified, packet installed as provided by Debian |
| libjpeg62-turbo | [Debian](https://packages.debian.org/bullseye/libjpeg62-turbo) | Within image: /usr/share/doc/libjpeg62-turbo/copyright | unmodified, packet installed as provided by Debian |
| libk5crypto3 | [Debian](https://packages.debian.org/bullseye/libk5crypto3) | Within image: /usr/share/doc/libk5crypto3/copyright | unmodified, packet installed as provided by Debian |
| libkeyutils1 | [Debian](https://packages.debian.org/bullseye/libkeyutils1) | Within image: /usr/share/doc/libkeyutils1/copyright | unmodified, packet installed as provided by Debian |
| libkrb5-3 | [Debian](https://packages.debian.org/bullseye/libkrb5-3) | Within image: /usr/share/doc/libkrb5-3/copyright | unmodified, packet installed as provided by Debian |
| libkrb5support0 | [Debian](https://packages.debian.org/bullseye/libkrb5support0) | Within image: /usr/share/doc/libkrb5support0/copyright | unmodified, packet installed as provided by Debian |
| libldap-2.4-2 | [Debian](https://packages.debian.org/bullseye/libldap-2.4-2) | Within image: /usr/share/doc/libldap-2.4-2/copyright | unmodified, packet installed as provided by Debian |
| liblz4-1 | [Debian](https://packages.debian.org/bullseye/liblz4-1) | Within image: /usr/share/doc/liblz4-1/copyright | unmodified, packet installed as provided by Debian |
| liblzma5 | [Debian](https://packages.debian.org/bullseye/liblzma5) | Within image: /usr/share/doc/liblzma5/copyright | unmodified, packet installed as provided by Debian |
| libmd0 | [Debian](https://packages.debian.org/bullseye/libmd0) | Within image: /usr/share/doc/libmd0/copyright | unmodified, packet installed as provided by Debian |
| libmnl0 | [Debian](https://packages.debian.org/bullseye/libmnl0) | Within image: /usr/share/doc/libmnl0/copyright | unmodified, packet installed as provided by Debian |
| libmount1 | [Debian](https://packages.debian.org/bullseye/libmount1) | Within image: /usr/share/doc/libmount1/copyright | unmodified, packet installed as provided by Debian |
| libnettle8 | [Debian](https://packages.debian.org/bullseye/libnettle8) | Within image: /usr/share/doc/libnettle8/copyright | unmodified, packet installed as provided by Debian |
| libnginx-mod-http-geoip | [Debian](https://packages.debian.org/bullseye/libnginx-mod-http-geoip) | Within image: /usr/share/doc/libnginx-mod-http-geoip/copyright | unmodified, packet installed as provided by Debian |
| libnginx-mod-http-image-filter | [Debian](https://packages.debian.org/bullseye/libnginx-mod-http-image-filter) | Within image: /usr/share/doc/libnginx-mod-http-image-filter/copyright | unmodified, packet installed as provided by Debian |
| libnginx-mod-http-xslt-filter | [Debian](https://packages.debian.org/bullseye/libnginx-mod-http-xslt-filter) | Within image: /usr/share/doc/libnginx-mod-http-xslt-filter/copyright | unmodified, packet installed as provided by Debian |
| libnginx-mod-mail | [Debian](https://packages.debian.org/bullseye/libnginx-mod-mail) | Within image: /usr/share/doc/libnginx-mod-mail/copyright | unmodified, packet installed as provided by Debian |
| libnginx-mod-stream-geoip | [Debian](https://packages.debian.org/bullseye/libnginx-mod-stream-geoip) | Within image: /usr/share/doc/libnginx-mod-stream-geoip/copyright | unmodified, packet installed as provided by Debian |
| libnginx-mod-stream | [Debian](https://packages.debian.org/bullseye/libnginx-mod-stream) | Within image: /usr/share/doc/libnginx-mod-stream/copyright | unmodified, packet installed as provided by Debian |
| libnsl2 | [Debian](https://packages.debian.org/bullseye/libnsl2) | Within image: /usr/share/doc/libnsl2/copyright | unmodified, packet installed as provided by Debian |
| libp11-kit0 | [Debian](https://packages.debian.org/bullseye/libp11-kit0) | Within image: /usr/share/doc/libp11-kit0/copyright | unmodified, packet installed as provided by Debian |
| libpam-modules-bin | [Debian](https://packages.debian.org/bullseye/libpam-modules-bin) | Within image: /usr/share/doc/libpam-modules-bin/copyright | unmodified, packet installed as provided by Debian |
| libpam-modules | [Debian](https://packages.debian.org/bullseye/libpam-modules) | Within image: /usr/share/doc/libpam-modules/copyright | unmodified, packet installed as provided by Debian |
| libpam-runtime | [Debian](https://packages.debian.org/bullseye/libpam-runtime) | Within image: /usr/share/doc/libpam-runtime/copyright | unmodified, packet installed as provided by Debian |
| libpam0g | [Debian](https://packages.debian.org/bullseye/libpam0g) | Within image: /usr/share/doc/libpam0g/copyright | unmodified, packet installed as provided by Debian |
| libpcre2-8-0 | [Debian](https://packages.debian.org/bullseye/libpcre2-8-0) | Within image: /usr/share/doc/libpcre2-8-0/copyright | unmodified, packet installed as provided by Debian |
| libpcre3 | [Debian](https://packages.debian.org/bullseye/libpcre3) | Within image: /usr/share/doc/libpcre3/copyright | unmodified, packet installed as provided by Debian |
| libpng16-16 | [Debian](https://packages.debian.org/bullseye/libpng16-16) | Within image: /usr/share/doc/libpng16-16/copyright | unmodified, packet installed as provided by Debian |
| libsasl2-2 | [Debian](https://packages.debian.org/bullseye/libsasl2-2) | Within image: /usr/share/doc/libsasl2-2/copyright | unmodified, packet installed as provided by Debian |
| libsasl2-modules-db | [Debian](https://packages.debian.org/bullseye/libsasl2-modules-db) | Within image: /usr/share/doc/libsasl2-modules-db/copyright | unmodified, packet installed as provided by Debian |
| libseccomp2 | [Debian](https://packages.debian.org/bullseye/libseccomp2) | Within image: /usr/share/doc/libseccomp2/copyright | unmodified, packet installed as provided by Debian |
| libselinux1 | [Debian](https://packages.debian.org/bullseye/libselinux1) | Within image: /usr/share/doc/libselinux1/copyright | unmodified, packet installed as provided by Debian |
| libsemanage-common | [Debian](https://packages.debian.org/bullseye/libsemanage-common) | Within image: /usr/share/doc/libsemanage-common/copyright | unmodified, packet installed as provided by Debian |
| libsemanage1 | [Debian](https://packages.debian.org/bullseye/libsemanage1) | Within image: /usr/share/doc/libsemanage1/copyright | unmodified, packet installed as provided by Debian |
| libsepol1 | [Debian](https://packages.debian.org/bullseye/libsepol1) | Within image: /usr/share/doc/libsepol1/copyright | unmodified, packet installed as provided by Debian |
| libsmartcols1 | [Debian](https://packages.debian.org/bullseye/libsmartcols1) | Within image: /usr/share/doc/libsmartcols1/copyright | unmodified, packet installed as provided by Debian |
| libss2 | [Debian](https://packages.debian.org/bullseye/libss2) | Within image: /usr/share/doc/libss2/copyright | unmodified, packet installed as provided by Debian |
| libssl1.1 | [Debian](https://packages.debian.org/bullseye/libssl1.1) | Within image: /usr/share/doc/libssl1.1/copyright | unmodified, packet installed as provided by Debian |
| libsystemd0 | [Debian](https://packages.debian.org/bullseye/libsystemd0) | Within image: /usr/share/doc/libsystemd0/copyright | unmodified, packet installed as provided by Debian |
| libtasn1-6 | [Debian](https://packages.debian.org/bullseye/libtasn1-6) | Within image: /usr/share/doc/libtasn1-6/copyright | unmodified, packet installed as provided by Debian |
| libtiff5 | [Debian](https://packages.debian.org/bullseye/libtiff5) | Within image: /usr/share/doc/libtiff5/copyright | unmodified, packet installed as provided by Debian |
| libtinfo6 | [Debian](https://packages.debian.org/bullseye/libtinfo6) | Within image: /usr/share/doc/libtinfo6/copyright | unmodified, packet installed as provided by Debian |
| libtirpc-common | [Debian](https://packages.debian.org/bullseye/libtirpc-common) | Within image: /usr/share/doc/libtirpc-common/copyright | unmodified, packet installed as provided by Debian |
| libtirpc3 | [Debian](https://packages.debian.org/bullseye/libtirpc3) | Within image: /usr/share/doc/libtirpc3/copyright | unmodified, packet installed as provided by Debian |
| libudev1 | [Debian](https://packages.debian.org/bullseye/libudev1) | Within image: /usr/share/doc/libudev1/copyright | unmodified, packet installed as provided by Debian |
| libunistring2 | [Debian](https://packages.debian.org/bullseye/libunistring2) | Within image: /usr/share/doc/libunistring2/copyright | unmodified, packet installed as provided by Debian |
| libuuid1 | [Debian](https://packages.debian.org/bullseye/libuuid1) | Within image: /usr/share/doc/libuuid1/copyright | unmodified, packet installed as provided by Debian |
| libwebp6 | [Debian](https://packages.debian.org/bullseye/libwebp6) | Within image: /usr/share/doc/libwebp6/copyright | unmodified, packet installed as provided by Debian |
| libx11-6 | [Debian](https://packages.debian.org/bullseye/libx11-6) | Within image: /usr/share/doc/libx11-6/copyright | unmodified, packet installed as provided by Debian |
| libx11-data | [Debian](https://packages.debian.org/bullseye/libx11-data) | Within image: /usr/share/doc/libx11-data/copyright | unmodified, packet installed as provided by Debian |
| libxau6 | [Debian](https://packages.debian.org/bullseye/libxau6) | Within image: /usr/share/doc/libxau6/copyright | unmodified, packet installed as provided by Debian |
| libxcb1 | [Debian](https://packages.debian.org/bullseye/libxcb1) | Within image: /usr/share/doc/libxcb1/copyright | unmodified, packet installed as provided by Debian |
| libxdmcp6 | [Debian](https://packages.debian.org/bullseye/libxdmcp6) | Within image: /usr/share/doc/libxdmcp6/copyright | unmodified, packet installed as provided by Debian |
| libxml2 | [Debian](https://packages.debian.org/bullseye/libxml2) | Within image: /usr/share/doc/libxml2/copyright | unmodified, packet installed as provided by Debian |
| libxpm4 | [Debian](https://packages.debian.org/bullseye/libxpm4) | Within image: /usr/share/doc/libxpm4/copyright | unmodified, packet installed as provided by Debian |
| libxslt1.1 | [Debian](https://packages.debian.org/bullseye/libxslt1.1) | Within image: /usr/share/doc/libxslt1.1/copyright | unmodified, packet installed as provided by Debian |
| libxtables12 | [Debian](https://packages.debian.org/bullseye/libxtables12) | Within image: /usr/share/doc/libxtables12/copyright | unmodified, packet installed as provided by Debian |
| libxxhash0 | [Debian](https://packages.debian.org/bullseye/libxxhash0) | Within image: /usr/share/doc/libxxhash0/copyright | unmodified, packet installed as provided by Debian |
| libzstd1 | [Debian](https://packages.debian.org/bullseye/libzstd1) | Within image: /usr/share/doc/libzstd1/copyright | unmodified, packet installed as provided by Debian |
| login | [Debian](https://packages.debian.org/bullseye/login) | Within image: /usr/share/doc/login/copyright | unmodified, packet installed as provided by Debian |
| logsave | [Debian](https://packages.debian.org/bullseye/logsave) | Within image: /usr/share/doc/logsave/copyright | unmodified, packet installed as provided by Debian |
| lsb-base | [Debian](https://packages.debian.org/bullseye/lsb-base) | Within image: /usr/share/doc/lsb-base/copyright | unmodified, packet installed as provided by Debian |
| mawk | [Debian](https://packages.debian.org/bullseye/mawk) | Within image: /usr/share/doc/mawk/copyright | unmodified, packet installed as provided by Debian |
| mount | [Debian](https://packages.debian.org/bullseye/mount) | Within image: /usr/share/doc/mount/copyright | unmodified, packet installed as provided by Debian |
| ncurses-base | [Debian](https://packages.debian.org/bullseye/ncurses-base) | Within image: /usr/share/doc/ncurses-base/copyright | unmodified, packet installed as provided by Debian |
| ncurses-bin | [Debian](https://packages.debian.org/bullseye/ncurses-bin) | Within image: /usr/share/doc/ncurses-bin/copyright | unmodified, packet installed as provided by Debian |
| nginx-common | [Debian](https://packages.debian.org/bullseye/nginx-common) | Within image: /usr/share/doc/nginx-common/copyright | unmodified, packet installed as provided by Debian |
| nginx-core | [Debian](https://packages.debian.org/bullseye/nginx-core) | Within image: /usr/share/doc/nginx-core/copyright | unmodified, packet installed as provided by Debian |
| nginx | [Debian](https://packages.debian.org/bullseye/nginx) | Within image: /usr/share/doc/nginx/copyright | unmodified, packet installed as provided by Debian |
| openssl | [Debian](https://packages.debian.org/bullseye/openssl) | Within image: /usr/share/doc/openssl/copyright | unmodified, packet installed as provided by Debian |
| passwd | [Debian](https://packages.debian.org/bullseye/passwd) | Within image: /usr/share/doc/passwd/copyright | unmodified, packet installed as provided by Debian |
| perl-base | [Debian](https://packages.debian.org/bullseye/perl-base) | Within image: /usr/share/doc/perl-base/copyright | unmodified, packet installed as provided by Debian |
| sed | [Debian](https://packages.debian.org/bullseye/sed) | Within image: /usr/share/doc/sed/copyright | unmodified, packet installed as provided by Debian |
| sensible-utils | [Debian](https://packages.debian.org/bullseye/sensible-utils) | Within image: /usr/share/doc/sensible-utils/copyright | unmodified, packet installed as provided by Debian |
| sysvinit-utils | [Debian](https://packages.debian.org/bullseye/sysvinit-utils) | Within image: /usr/share/doc/sysvinit-utils/copyright | unmodified, packet installed as provided by Debian |
| tar | [Debian](https://packages.debian.org/bullseye/tar) | Within image: /usr/share/doc/tar/copyright | unmodified, packet installed as provided by Debian |
| tzdata | [Debian](https://packages.debian.org/bullseye/tzdata) | Within image: /usr/share/doc/tzdata/copyright | unmodified, packet installed as provided by Debian |
| ucf | [Debian](https://packages.debian.org/bullseye/ucf) | Within image: /usr/share/doc/ucf/copyright | unmodified, packet installed as provided by Debian |
| util-linux | [Debian](https://packages.debian.org/bullseye/util-linux) | Within image: /usr/share/doc/util-linux/copyright | unmodified, packet installed as provided by Debian |
| zlib1g | [Debian](https://packages.debian.org/bullseye/zlib1g) | Within image: /usr/share/doc/zlib1g/copyright | unmodified, packet installed as provided by Debian |
