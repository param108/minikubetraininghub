#!/bin/bash

cd ~/kubernete101-users

for i in 1 2 3 4 5 6 7 8 9
do
	xterm -T "user$i" -e "sudo chroot --userspec=param:param user$i /usr/bin/tmate" &
done

echo "Waiting"
sleep 5

for i in 1 2 3 4 5 6 7 8 9
do
SOCKET=`ls user$i/tmp/tmate-1000/*`
URL=`tmate -S "$SOCKET" display -p "#{tmate_ssh}"`
echo "${URL},user$i,user$i,none" | sed 's/^ssh //g'
done
