#!/bin/bash


cd ~/kubernete101-users

for i in 1 2 3 4 5 6 7 8 9
do
	chroot.sh user$i
done
