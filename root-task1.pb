##############################################################
# /root/task1.pb

# This playbook will first install the latest mysql-server and 
# wordpress on every host in the "me2we" group

# As you can see above this means every host in [mysql] and every host in [wordpress]

# [mysql]     has only 1 host listed 192.168.2.20 
# [wordpress] has only 1 host listed 192.168.2.21

# Ansible command to run this playbook
# ansible-playbook /root/task1.pb -u root -k
##############################################################

- hosts: me2we
  tasks: 
  - name: Install required software
    apt: name={{ item }} state=present
    sudo: yes
     
     with_items: 
     - mysql-server
     - apache2
     - php5-mysql
     - php5
     - libapache2-mod-php5
     - php5-mcrypt
     - python-mysqldb
     
     
