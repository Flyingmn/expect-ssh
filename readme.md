# expect-ssh

[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

expect一些脚本


## Table of Contents

- [Install](#install)
- [Usage](#usage)
- [Maintainers](#maintainers)
- [License](#license)

## Install

```shell
# mac:
brew install expect
# ubuntu:
sudo apt install expect
# centos:
yum install expect

# mysql_command.sh: 登陆MySQL

# redis_command.sh: 登陆Redis

# ali-msg-code.sh: 自动获取短信登录阿里云ssh， 此脚本需要一些额外操作
# 0、需要一台iPhone，一台Mac  
# 1、iPhone开启Mac接收信息  
# 2、Mac设置csrutil disable  
# 3、下载脚本 设置执行权限 修改配置  

git clone https://github.com/Flyingmn/expect-ssh.git
```

## Usage

```shell
cd expect-ssh
chmod +x redis_command.sh
./redis_command.sh
```

## Maintainers

[@https://github.com/Flyingmn](https://github.com/Flyingmn)

Small note: If editing the README, please conform to the [standard-readme](https://github.com/RichardLitt/standard-readme) specification.

## License

2020 flying
