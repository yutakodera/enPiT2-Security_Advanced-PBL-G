
create user 'attacker' identified by '0000';
grant all on RhoMethod.* to 'attacker';
flush privileges;
