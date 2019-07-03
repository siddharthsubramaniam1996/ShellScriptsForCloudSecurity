
#!/bin/bash
SCRIPT="sed -i '14s/.*/port 523/' /etc/chrony.conf; systemctl restart chronyd"
HOSTS=("192.168.100.103")
USERNAMES=("root")
PASSWORDS=("18030143003")
for i in ${!HOSTS[*]} ; do
     echo ${HOSTS[i]}
     SCR=${SCRIPT/PASSWORD/${PASSWORDS[i]}}
     sshpass -p ${PASSWORDS[i]} ssh -l ${USERNAMES[i]} ${HOSTS[i]} "${SCR}"
done
