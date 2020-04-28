#!/bin/bash
# Script to download the source packages of the installed debian/ubuntu packages

# Update the sources list so that we could get the source packages at all
touch /etc/apt/sources.list.d/dummy
sed -i '{ s/# deb-src/deb-src/ }' /etc/apt/sources.list /etc/apt/sources.list.d/*
apt-get update

# Get a list of installed packages
INSTALLED_PACKAGES=$(dpkg --get-selections | grep install | cut -f 1)
#echo $INSTALLED_PACKAGES

LIST_WITH_DUPLICATES=$(basename $0)-with-doubles
LIST_WITHOUT_DUPLICATES=$(basename $0)-without-doubles

rm -f $LIST_WITH_DUPLICATES

for CURRENT_PACKAGE in $INSTALLED_PACKAGES
do
    echo $CURRENT_PACKAGE
    SOURCE_PACKAGE_NAME=$(dpkg -s $CURRENT_PACKAGE | grep -e "^Source" | cut -d' ' -f 2)
    if [ "x$SOURCE_PACKAGE_NAME" = "x" ]
    then
	SOURCE_PACKAGE_NAME=$CURRENT_PACKAGE
    fi
    SOURCE_PACKAGE_VERSION=$(dpkg -s $CURRENT_PACKAGE | grep -e "^Version" | cut -d' ' -f 2)
    echo "download $SOURCE_PACKAGE_NAME $SOURCE_PACKAGE_VERSION"
    echo "apt-get source $SOURCE_PACKAGE_NAME=$SOURCE_PACKAGE_VERSION --download-only" >> $LIST_WITH_DUPLICATES
done

# Remove duplicates
sort -u $LIST_WITH_DUPLICATES > $LIST_WITHOUT_DUPLICATES

# Download
. $LIST_WITHOUT_DUPLICATES
