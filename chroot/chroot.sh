#!/bin/bash -e

if [ "a$1" = "a" ]
then
	echo "argument cannot be empty"
	exit 1
fi

mkdir $1

cp --parent /lib/x86_64-linux-gnu/libutil.so.1 /usr/lib/x86_64-linux-gnu/libssh.so.4 /usr/lib/x86_64-linux-gnu/libmsgpackc.so.2 /lib/x86_64-linux-gnu/libtinfo.so.5 /usr/lib/x86_64-linux-gnu/libevent-2.1.so.6 /lib/x86_64-linux-gnu/libresolv.so.2 /lib/x86_64-linux-gnu/libc.so.6 /usr/lib/x86_64-linux-gnu/libcrypto.so.1.1 /lib/x86_64-linux-gnu/librt.so.1 /lib/x86_64-linux-gnu/libz.so.1 /usr/lib/x86_64-linux-gnu/libgssapi_krb5.so.2 /lib64/ld-linux-x86-64.so.2 /lib/x86_64-linux-gnu/libpthread.so.0 /lib/x86_64-linux-gnu/libdl.so.2 /usr/lib/x86_64-linux-gnu/libkrb5.so.3 /usr/lib/x86_64-linux-gnu/libk5crypto.so.3 /lib/x86_64-linux-gnu/libcom_err.so.2 /usr/lib/x86_64-linux-gnu/libkrb5support.so.0 /lib/x86_64-linux-gnu/libkeyutils.so.1 $1/

cp --parent /lib/x86_64-linux-gnu/libtinfo.so.5 /lib/x86_64-linux-gnu/libdl.so.2 /lib/x86_64-linux-gnu/libc.so.6 /lib64/ld-linux-x86-64.so.2 $1/

cp --parent /lib/x86_64-linux-gnu/libselinux.so.1 /lib/x86_64-linux-gnu/libc.so.6 /lib/x86_64-linux-gnu/libpcre.so.3 /lib/x86_64-linux-gnu/libdl.so.2 /lib64/ld-linux-x86-64.so.2 /lib/x86_64-linux-gnu/libpthread.so.0 $1/

cp --parent /lib/x86_64-linux-gnu/libc.so.6 /lib64/ld-linux-x86-64.so.2 $1/

cp --parent /usr/lib/x86_64-linux-gnu/libstdc++.so.6 /lib/x86_64-linux-gnu/libm.so.6 /lib/x86_64-linux-gnu/libgcc_s.so.1 $1/

cp --parent /usr/bin/telnet $1/
cp --parent /usr/lib/locale/locale-archive $1/
cp --parent /usr/bin/locale $1/
cp --parent /bin/bash $1/
cp --parent /usr/bin/tmate $1/
cp --parent /usr/bin/whoami $1/
cp --parent /usr/bin/groups $1/
cp --parent /usr/bin/tty $1/
cp --parent /bin/ls $1/
cp --parent /bin/rm $1/
cp --parent /bin/cat $1/
cp --parent -R /var/lib/locales/supported.d $1/
cp --parent -R /lib/terminfo $1/

cp --parent /etc/bash.bashrc $1/

cp --parent /etc/default/locale $1/
#echo "export LANG=en_IN" >> $1/etc/bash.bashrc
#echo "export LANGUAGE=en_IN:en" >> $1/etc/bash.bashrc
#echo "export LC_CTYPE=C" >> $1/etc/bash.bashrc

mkdir -p $1/tmp/tmux-1001/default/


echo "param:x:1000:1000:Paramananda,,,:/home/param:/bin/bash" > $1/etc/passwd
echo "root:x:0:0:root:/root:/bin/bash" >> $1/etc/passwd

echo "param:x:1000:" > $1/etc/group
echo "root:x:0:" >> $1/etc/group

echo "nameserver 8.8.8.8" > $1/etc/resolv.conf

sudo chown root:root $1/etc/passwd
sudo chown root:root $1/etc/group

mkdir $1/dev
sudo mount --rbind /dev $1/dev 
mkdir $1/proc
sudo mount --rbind /proc $1/proc 

#sudo mount -t devpts devpts $1/dev/pts -o 'rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000'

mkdir -p $1/home/param/.ssh
ssh-keygen -t rsa -N '' -f  $1/home/param/.ssh/id_rsa

#sudo mount -t proc proc $1/proc -o 'rw,nosuid,nodev,noexec,relatime'

sudo chown -R root:root $1/usr
sudo chown -R root:root $1/bin
sudo chown -R root:root $1/var
