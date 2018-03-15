### 简介
* centos7
* python 2.7.12
* zabbix 3.2
### 存在问题
* 网络不稳，程序中断
* handlers中使用service无法启动 mariadb
* 重复任务多次执行

### tree
```bash
—── zabbix
    ├── group_vars  
    │   ├── agent
    │   ├── db
    │   └── zabbix      #安装zabbix server是的变量
    ├── hosts           #需安装服务的主机清单     
    ├── README.MD
    ├── roles           #需要安装的服务
    │   ├── agent
    │   │   ├── handlers
    │   │   │   └── main.yml
    │   │   ├── tasks
    │   │   │   └── main.yml
    │   │   └── templates
    │   │       └── zabbix_agented.conf.j2
    │   ├── db
    │   │   ├── handlers
    │   │   │   └── main.yml
    │   │   ├── tasks
    │   │   │   └── main.yml
    │   │   └── templates
    │   │       └── my.cnf.j2
    │   └── zabbix  
    │       ├── handlers        #启动zabbix server 的命令
    │       │   └── main.yml
    │       ├── tasks           #安装zabbix server的脚本入口
    │       │   └── main.yml  
    │       └── templates       #安装zabbix server时需替换的文件
    │           ├── zabbix.conf 
    │           └── zabbix_server.conf.j2
    └── site.yml  #脚本入口
```
### 运行方式 
```bash
ansible-playbook -i hosts site.yml -v
```
