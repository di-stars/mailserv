#!/bin/sh

if [ X"$PKG_PATH" == X"" ]; then
  PKG_PATH=http://ftp.OpenBSD.org/pub/OpenBSD/`uname -r`/packages/`uname -m`/
  export PKG_PATH
fi

case $1 in

  (install):
    echo "Installing packages"
    mkdir /var/db/spamassassin 2>/dev/null
    cat <<__EOT
    
You will be prompted to install a postfix version. The recommendation is to install
the first version.

Fetching versions:

__EOT
    pkg_add -v -m mysql-server
     ;;

esac
