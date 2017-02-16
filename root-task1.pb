##############################################################
/root/task1.pb

This playbook will first install the latest mysql-server and 
wordpress on every host in the "me2we" group

As you can see above this means every host in [mysql] and every host in [wordpress]

[mysql]     has only 1 host listed 192.168.2.20 
[wordpress] has only 1 host listed 192.168.2.21

# Ansible command to run this playbook
ansible-playbook /root/task1.pb -u root -k
##############################################################

- hosts: me2we
  tasks:
   - name: install mysql-server
     apt: name=mysql-server update_cache=yes state=latest

   - name: install wordpress
     apt: name=wordpress update_cache=yes state=latest
