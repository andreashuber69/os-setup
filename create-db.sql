create database owncloud;
create user owncloud@localhost identified by '12345';
grant all privileges on owncloud.* to owncloud@localhost identified by '12345';
flush privileges;