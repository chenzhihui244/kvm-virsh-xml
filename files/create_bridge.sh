#!/bin/bash

bridge=$1
iface=$2

grep -q ${iface} /proc/net/dev 2>/dev/null || exit 1

grep -q ${bridge} /proc/net/dev 2>/dev/null || {
	virsh iface-bridge ${bridge} ${iface}
}

