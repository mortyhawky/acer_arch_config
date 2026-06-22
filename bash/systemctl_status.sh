#!/usr/bin/env bash

### USAGE:
# watch -c ./systemctl_status.sh

#systemctl status |grep -E --color=always "iwd|networkd|resolved" | head -n6
systemctl status |grep --color=always service
