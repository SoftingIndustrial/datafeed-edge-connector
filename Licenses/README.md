# Softing open source license declaration of dataFEED edge connector images

Many open source component copyrights refer to one of these common public licenses, which are within the docker images in the directory `/usr/share/common-licenses/`. To avoid, that you need to copy and or read several times the same license text file, those licences are collected in `/usr/share/common-licenses/` within the docker images. So if a copyright file refers to one of those licences, please look into this directory within the docker image

You could download the sources of all the open source based binaries, which we have got from Ubuntu within our docker image.
To do this, use the following commands:

```bash
mkdir source-folder
cd source-folder
docker run --rm -it -w $(pwd) -v $(pwd):$(pwd) softingindustrial/edgeconnector-siemens:latest getOpenSourcePackages.sh
```

To fully comply with the open licensing terms, we also offer for at least three years,
to give any third party, for a charge no more than our cost of physically performing source distribution, a complete machine-readable copy of the corresponding source code.
To use this offer, please contact [info.automation@softing.com](mailto:info.automation@softing.com).

## The following components are used:

| Name | Source | License | Change Info |
| ---- | ------ | ------- | ----------- |
|      | (Link to the mantainer page or the source were we have got the software from) |  | (if modified by Softing) |
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
