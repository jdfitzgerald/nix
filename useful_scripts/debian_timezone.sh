#!/bin/bash

# set timezone to utc
ln -nfs /usr/share/zoneinfo/UTC /etc/localtime 
dpkg-reconfigure --frontend noninteractive tzdata
