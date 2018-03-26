## 安装tomcat
### 安装环境
* centos7
* java-1.8.0-openjdk
* tomcat-8.5.29

### 安装命令
```bash
ansible-playbook -i hosts site.yml -v
```

### 存在问题
get_url 获取tomat.tat.gz包可能会失败

