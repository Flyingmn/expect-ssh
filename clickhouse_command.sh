#!/usr/bin/expect

set uname "uname"
puts "特殊字符使用反斜线转义"
set passwd "pass\$wd"
set host "host"
set port 9000
set db: "dbname"

set timeout 20

spawn clickhouse-client -h $host -u $uname --password $passwd --port $port
sleep 1
expect "*clickhouse :)"
send "use $db\r"


interact
