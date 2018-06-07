#!/bin/bash

file_path=$1
file_name=$2
file_size_g=$3

cd ${file_path} &&
	[ -f ${file_name} ] || qemu-img create -f qcow2 ${file_name} ${file_size_g}G
