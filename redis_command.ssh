#!/usr/bin/expect

puts "特殊字符反斜杠转义"

set passwd "pw\$d"
set host "host"
set port 6379

set timeout 20

spawn redis-cli -h $host -p $port
sleep 1
expect "*:$port>"
send "auth $passwd\r"


interact
