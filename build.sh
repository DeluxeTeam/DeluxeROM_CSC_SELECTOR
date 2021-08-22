#!/bin/bash

# @abrahamgcc
# ./build.sh FDUE3

clear
echo -e "\n BUILDING Deluxe_CSC_Selector_${1} ..."
rm -rf Deluxe_CSC_Selector_${1}.zip
cd deluxe/omc_base
tar -cJf omc_base.tar.xz *
mv omc_base.tar.xz ../omc_base.tar.xz
cd ../../
zip -r -9 Deluxe_CSC_Selector_${1}.zip META-INF deluxe LIST -x "deluxe/omc_base/*"
rm -rf deluxe/omc_base.tar.xz
echo -e "\n Done!"
exit 0
