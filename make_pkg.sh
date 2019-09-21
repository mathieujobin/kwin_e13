#!/bin/sh
git archive master --prefix=kwin_e13/ | tar -xv
makeself --bzip2 kwin_e13 kwin_e13.run "Enlightenment DR13 decoration theme" ./install.sh