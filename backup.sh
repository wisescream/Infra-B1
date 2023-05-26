echo " " | sudo -S tar -cvzf /home/user/Back-up/Back-up$(date +-%d-%b-%Y).tar.gz --exclude={"/dev/","/proc/","/sys/","/tmp/","/run/","/mnt/","/media/","/var/","/snap/","/lost+found"} /home/user/Work
wait
clear
wait
rsync -azPv /home/user/Back-up/Back-up$(date +-%d-%b-%Y).tar.gz kali@192.168.248.128:/home/kali/Back-up/Back-up
wait
rm -r /home/user/Back-up/Back-up$(date +-%d-%b-%Y).tar.gz 
