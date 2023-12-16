#!/bin/bash

wget https://github.com/yaklang/yaklang/releases/latest/download/yak_linux_amd64

chmod +x yak_linux_amd64 && ./yak_linux_amd64 install

cp /root/yakit-projects/default-yakit.db /root/default-yakit.db

