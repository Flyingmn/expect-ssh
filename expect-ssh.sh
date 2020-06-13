#!/usr/bin/expect
  
set passwd "123456"
#用户以及用户目录
set username "root"
set address "127.0.0.1"
set port 22

set timeout 20
set currentDate [exec date +%Y-%m-%d]
set currenttime [exec date +%H%M%S]

spawn ssh $username@$address -p $port
sleep 1
expect "*password:"
send "$passwd\r"
expect eof

sleep 2
set msgFile [exec find /Users/$username/Library/Messages/Archive/$currentDate/ -mmin -1 -name "10655025230089757920*"]

exec cp "$msgFile" /Users/$username/msg-file
exec plutil -convert xml1 /Users/$username/msg-file

#修改/Users/root/目录为个人目录
set code [exec sh -c {cat "/Users/root/msg-file" | grep -o "您的验证码是[0-9]\{6\}"|tail -1|grep -o "[0-9]\{6\}"}]

expect "*phone:"
send "$code\r"

interact