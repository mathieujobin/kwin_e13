#!/bin/sh

NAME="kwin_e13"
DATA_DIR=`kf5-config --path data | cut -d":" -f 1`
SERVICES_DIR=`kf5-config --path services | cut -d":" -f 1`

mkdir -p ${DATA_DIR}kwin/decorations/$NAME
cp -r * ${DATA_DIR}kwin/decorations/$NAME
cp metadata.desktop ${SERVICES_DIR}$NAME.desktop
kbuildsycoca5 &> /dev/null
echo kwin_e13 Installed
