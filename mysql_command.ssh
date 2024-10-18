#!/usr/bin/expect


puts "特殊字符反斜杠转义"
set passwd "pass\$wd"
set uname "uname"
set host "host"
set port 3306
set database "dbname"

set timeout 20

spawn mysql -h$host -u$uname -P$port -p

expect "*password:"
send "$passwd\r"

expect "*mysql>"

send "use $database\r"


interact


