#!/bin/sh
echo "[+] Cleaning files generated by cmake"
rm -fr $(svn st | grep '?' | sed 's:^.::' | grep -i cmake)
rm -f install_manifest.txt Makefile src/Makefile po/Makefile