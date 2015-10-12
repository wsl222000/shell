#!/bin/bash
useradd nagios
tar xvf nagios-plugins*.tar.gz
	cd nagios-plugins*
	./configure --with-nagios-user=nagios --with-nagios-group=nagios && make && make install

tar xvf nrp-*.tar.gz
	cd nrpe-*
	./configure && make all && make install-plugin && make install-daemon && make install-daemon-config

sed -i 's/allowed_hosts.*/allowed_hosts=10.1.4.107/' /usr/local/nagios/etc/nrpe.cfg

/usr/local/nagios/bin/nrpe -c /usr/local/nagios/etc/nrpe.cfg -d
