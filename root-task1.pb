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

- hosts: wordpress
  tasks: 
  - name: First install all Wordpress dependencies 
    apt: name={{ item }} state=present
    sudo: yes
     
     with_items: 
     - mysql-server
     - apache2
     - php5
     - php5-mysql
     - libapache2-mod-php5
     - python-mysqldb
     - php5-gd 
     - libssh2-php
     - php5-curl 
     - php5-intl 
     - php-pear
     - php5-imagick 
     - php5-imap 
     - php5-mcrypt 
     - php5-memcache 
     - php5-ming php5-ps 
     - php5-pspell 
     - php5-recode 
     - php5-sqlite 
     - php5-tidy 
     - php5-xmlrpc 
     - php5-xsl
     
