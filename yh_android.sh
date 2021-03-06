#!/usr/bin/env bash

current_assets_path="app/src/main/assets/assets.zip"
server_assets_path="../../work/YH-Server/public/assets.zip"

exit_with_info() {
    echo "$1 not exist"
    exit
}

test -e ${server_assets_path} || exit_with_info ${server_assets_path}
test -e ${current_assets_path} || exit_with_info ${current_assets_path}

current_assets_md5=$(md5 ${current_assets_path} | cut -d = -f 2)
server_assets_md5=$(md5 ${server_assets_path} | cut -d = -f 2)

if [[ "${current_assets_md5}" == "${server_assets_md5}" ]]; then
    echo "current equal server: ${current_assets_md5}"
else
    echo "diff - current: ${current_assets_md5}, server: ${server_assets_md5}"
    echo "copy server to current asset file"
    cp ${server_assets_path} ${current_assets_path}

    bash "$0"
fi

