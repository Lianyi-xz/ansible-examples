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
ansible-playbook -i hosts main.yml 
```

