#!/usr/bin/env bash

declare -r ROOT="$(dirname $(readlink -f "$0"))"
sudo ln -sf $ROOT/springworks /usr/bin/springworks
sudo cp $ROOT/springworks.service /etc/systemd/system/springworks.service
sudo systemctl enable springworks
sudo systemctl daemon-reload
sudo systemctl start springworks
