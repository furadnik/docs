#!/usr/bin/bash

location=${1}
zeal_storage="${HOME}/.local/share/Zeal/Zeal/docsets"

cd "${location}"
for file in *.docset; do
   if [ -d "${zeal_storage}/${file}" ]; then
      rm -rf "${zeal_storage}/${file}"
   fi
   mv "${file}" "${zeal_storage}"
done
