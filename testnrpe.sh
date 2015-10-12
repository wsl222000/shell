#!/bin/bash
[ -e /etc/nrpe_cfg.sh ] || echo "file is not exit!"
sed -i 's/allowed_hosts.*/allowed_hosts=127.0.0.1,10.1.4.107/' /usr/local/nagios/etc/nrpe.cfg

cat  /usr/local/nagios/etc/nrpe.cfg|grep -v ^#|grep -v ^$|sed -n 's/.*check_users.*/command[check_users]=usr\/local\/nagios\/libexec\/check_users -w 40 -c 60/p'

cat  /usr/local/nagios/etc/nrpe.cfg|grep -v ^#|grep -v ^$|sed -n 's/.*check_load.*/command[check_load]=usr\/local\/nagios\/libexec\/check_load -w 15,10,5 -c 30,25,20/p'

cat  /usr/local/nagios/etc/nrpe.cfg|grep -v ^#|grep -v ^$|sed -n 's/.*check_zombie_procs.*/command[check_procs]=usr\/local\/nagios\/libexec\/check_procs -w 5 -c 10 -s Z/p'

cat  /usr/local/nagios/etc/nrpe.cfg|grep -v ^#|grep -v ^$|sed -n 's/.*check_total_procs.*/command[check_procs]=usr\/local\/nagios\/libexec\/check_procs -w 1500 -c 2000 /p'

add="-x /U4v1"
set -x
cat  /usr/local/nagios/etc/nrpe.cfg|grep -v ^#|grep -v ^$|sed -n "s@.*check_disk.*@command[check_procs]=usr/local/nagios/libexec/check_disk -w 10% -c 5% -lm $add @p"
echo $add
