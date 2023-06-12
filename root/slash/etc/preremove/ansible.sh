if [ -f /etc/ansible/ansible.cfg ] && cmp -s /etc/defaults/etc/ansible/ansible.cfg /etc/ansible/ansible.cfg
then
    rm /etc/ansible/ansible.cfg
fi

if [ -f /etc/ansible/hosts ] && cmp -s /etc/defaults/etc/ansible/hosts /etc/ansible/hosts
then
    rm /etc/ansible/hosts
fi

