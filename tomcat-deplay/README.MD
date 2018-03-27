## 部署服务
### tomcat环境
* centos7
* java-1.8.0-openjdk
* tomcat-8.5.29

### 部署命令
```bash
ansible-playbook -i hosts site.yml -v
```
### 存在问题
* war包需手动上传到ansible-examples/tomcat-deplay/roles/tomcat/files文件夹中
* 旧war包未备份，直接删除
