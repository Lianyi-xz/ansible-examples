### 修改配置
```bash
vim /etc/ansible/ansible.cfg
host_key_checking = False
```
### 关闭selinux
```bash
sed -i 's#enforcing#disabled#g' /etc/selinux/config
setenforce 0
```
### 生成ssh
```bash
ssh-keygen -t rsa -b 2048 -P '' -f /root/.ssh/id_rsa
```

### 编辑host
```
ip  ansible_ssh_pass=passwd
```

### 运行
```bash
ansible-playbook -i hosts -e 'host_key_checking=False' main.yml 
```

### 验证
```bash
ansible -i hosts centos -m ping
```

