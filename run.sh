#!/bin/bash

service nginx restart
service php5-fpm restart
/usr/sbin/sshd

sed -i 's/127.0.0.1/'$s'/g'  /root/Applications/Shadowsocks/config.php
sed -i 's/aes-256-cfb/'$m'/g' /root/Applications/Shadowsocks/config.php
sed -i 's/12345678/'$k'/g' /root/Applications/Shadowsocks/config.php
sed -i 's/443/'$p'/g' /root/Applications/Shadowsocks/config.php
sed -i 's/1080/'$c'/g' /root/Applications/Shadowsocks/config.php
sed -i 's/50/'$n'/g' /root/Applications/Shadowsocks/config.php

php start.php start
