#!/bin/bash -ex

if [ "a$1" = "a" ]
then
	echo "argument cannot be empty"
	exit 1
fi

sudo mount --make-rslave $1/dev
sudo umount -R -l $1/dev

sudo mount --make-rslave $1/proc
sudo umount -l $1/proc

sudo rm -rf $1/usr $1/bin $1/var
rm -rf $1
