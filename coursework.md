# Курсовая работа по итогам модуля "DevOps и системное администрирование"  
## #1  
  
1. *Создайте виртуальную машину Linux.*  

**Ответ:**  
```bash
$ vagrant ssh
Welcome to Ubuntu 20.04.2 LTS (GNU/Linux 5.4.0-80-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Mon 31 Jan 2022 11:35:19 PM UTC

  System load:  0.17              Processes:             118
  Usage of /:   3.5% of 61.31GB   Users logged in:       0
  Memory usage: 15%               IPv4 address for eth0: 10.0.2.15
  Swap usage:   0%                IPv4 address for eth1: 192.168.33.10

This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento
```  
2. *Установите ufw и разрешите к этой машине сессии на порты 22 и 443, при этом трафик на интерфейсе localhost (lo) 
должен ходить свободно на все порты.*  

**Ответ:**  
```bash
vagrant@vagrant:~$ sudo ufw status
Status: inactive
vagrant@vagrant:~$ sudo ufw allow 22
Rules updated
Rules updated (v6)
vagrant@vagrant:~$ sudo ufw allow 443
Rules updated
Rules updated (v6)
vagrant@vagrant:~$ sudo ufw enable
Command may disrupt existing ssh connections. Proceed with operation (y|n)? y
Firewall is active and enabled on system startup
vagrant@vagrant:~$ sudo ufw status
Status: active

To                         Action      From
--                         ------      ----
22                         ALLOW       Anywhere
443                        ALLOW       Anywhere
22 (v6)                    ALLOW       Anywhere (v6)
443 (v6)                   ALLOW       Anywhere (v6)
```  
3. *Установите hashicorp vault.*  

**Ответ:**  
 - Установим и обновим необходимые зависимости:  
```bash
vagrant@vagrant:~$ sudo apt-get -y update
vagrant@vagrant:~$ sudo apt-get -y upgrade 
```  
  - Установим Vault:
```bash
vagrant@vagrant:~$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
vagrant@vagrant:~$ sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
vagrant@vagrant:~$ sudo apt-get update && sudo apt-get install vault

vagrant@vagrant:~$ sudo vault
Usage: vault <command> [args]

Common commands:
    read        Read data and retrieves secrets
    write       Write data, configuration, and secrets
    delete      Delete secrets and configuration
    list        List data or secrets
    login       Authenticate locally
    agent       Start a Vault agent
    server      Start a Vault server
    status      Print seal and HA status
    unwrap      Unwrap a wrapped secret

Other commands:
    audit          Interact with audit devices
    auth           Interact with auth methods
    debug          Runs the debug command
    kv             Interact with Vault's Key-Value storage
    lease          Interact with leases
    monitor        Stream log messages from a Vault server
    namespace      Interact with namespaces
    operator       Perform operator-specific tasks
    path-help      Retrieve API help for paths
    plugin         Interact with Vault plugins and catalog
    policy         Interact with policies
    print          Prints runtime configurations
    secrets        Interact with secrets engines
    ssh            Initiate an SSH session
    token          Interact with tokens
```
4. *Создайте центр сертификации по инструкции и выпустите сертификат для использования его в настройке веб-сервера 
nginx (срок жизни сертификата - месяц).*  

**Ответ:**  
- Запускаем Valut server в dev-режиме в отдельном терминале:
```bash
vagrant@vagrant:~$ vault server -dev -dev-root-token-id root
==> Vault server configuration:

             Api Address: http://127.0.0.1:8200
                     Cgo: disabled
         Cluster Address: https://127.0.0.1:8201
              Go Version: go1.17.5
              Listener 1: tcp (addr: "127.0.0.1:8200", cluster address: "127.0.0.1:8201", \ 
                         max_request_duration: "1m30s", max_request_size: "33554432", tls: "disabled")
               Log Level: info
                   Mlock: supported: true, enabled: false
           Recovery Mode: false
                 Storage: inmem
                 Version: Vault v1.9.3
             Version Sha: 7dbdd57243a0d8d9d9e07cd01eb657369f8e1b8a

==> Vault server started! Log data will stream in below:
...
```  
- Создадим переменные окружения:
```bash
root@vagrant:~# export VAULT_ADDR='http://127.0.0.1:8200'
root@vagrant:~# export VAULT_TOKEN=root

root@vagrant:~# vault status
Key             Value
---             -----
Seal Type       shamir
Initialized     true
Sealed          false
Total Shares    1
Threshold       1
Version         1.9.3
Storage Type    inmem
Cluster Name    vault-cluster-9d63cfd5
Cluster ID      b24b3697-5d24-e844-4fb7-13d2a5adb75c
HA Enabled      false
```  
- Создаем Root CA и Intermediate CA:  
```bash
root@vagrant:~# vault secrets enable pki
Success! Enabled the pki secrets engine at: pki/

root@vagrant:~# vault secrets tune -max-lease-ttl=8760h pki
Success! Tuned the secrets engine at: pki/

root@vagrant:~# vault write -field=certificate pki/root/generate/internal \ 
   common_name="myshelov.com" ttl=87600h > CA_cert.crt

root@vagrant:~# vault write pki/config/urls \     
   issuing_certificates="$VAULT_ADDR/v1/pki/ca" \    
   crl_distribution_points="$VAULT_ADDR/v1/pki/crl"
Success! Data written to: pki/config/urls

root@vagrant:~# vault secrets enable -path=pki_int pki
Success! Enabled the pki secrets engine at: pki_int/

root@vagrant:~# vault secrets tune -max-lease-ttl=8760h pki_int
Success! Tuned the secrets engine at: pki_int/

root@vagrant:~# apt install jq
...

root@vagrant:~# vault write -format=json pki_int/intermediate/generate/internal \ 
   common_name="myshelov.com Intermediate Authority" | jq -r '.data.csr' > pki_intermediate.csr

root@vagrant:~# vault write -format=json pki/root/sign-intermediate csr=@pki_intermediate.csr \ 
   format=pem_bundle ttl="43800h" | jq -r '.data.certificate' > intermediate.cert.pem

root@vagrant:~# vault write pki_int/intermediate/set-signed certificate=@intermediate.cert.pem
Success! Data written to: pki_int/intermediate/set-signed

root@vagrant:~# vault write pki_int/roles/myshelov-dot-com allowed_domains="myshelov.com" \
   allow_subdomains=true max_ttl="720h"
Success! Data written to: pki_int/roles/myshelov-dot-com

root@vagrant:~# vault list pki_int/roles/
Keys
----
myshelov-dot-com
```  
 - Создаем сертификаты для devops.myshelov.com
```bash
root@vagrant:~# vault write -format=json pki_int/issue/myshelov-dot-com common_name="devops.myshelov.com" \ 
   ttl=24h > devops.myshelov.com.crt
   
root@vagrant:~# cat devops.myshelov.com.crt
...
    "serial_number": "0e:fc:c4:1e:35:c5:76:13:e9:97:42:9e:12:f2:53:7d:6f:ea:e0:20"

root@vagrant:~# cat devops.myshelov.com.crt | jq -r .data.certificate > devops.myshelov.com.crt.pem
root@vagrant:~# cat devops.myshelov.com.crt | jq -r .data.issuing_ca >> devops.myshelov.com.crt.pem
root@vagrant:~# cat devops.myshelov.com.crt | jq -r .data.private_key > devops.myshelov.com.crt.key
 ```  
5. *Установите корневой сертификат созданного центра сертификации в доверенные в хостовой системе.*  

**Ответ:**  
```bash
root@vagrant:~# ln -s /root/CA_cert.crt /usr/local/share/ca-certificates/CA_cert.crt
root@vagrant:~# update-ca-certificates
Updating certificates in /etc/ssl/certs...
1 added, 0 removed; done.
Running hooks in /etc/ca-certificates/update.d...
done.
```  
6. *Установите nginx.*  

**Ответ:**  
```bash
root@vagrant:~# apt install nginx
Reading package lists... Done
Building dependency tree
Reading state information... Done
nginx is already the newest version (1.18.0-0ubuntu1.2).
0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.

root@vagrant:~# systemctl status nginx
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/lib/systemd/system/nginx.service; enabled; vendor preset: enabled)
     Active: active (running) since Mon 2022-01-31 20:36:08 UTC; 1h 9min ago
       Docs: man:nginx(8)
   Main PID: 58899 (nginx)
      Tasks: 2 (limit: 1071)
     Memory: 4.0M
     CGroup: /system.slice/nginx.service
             ├─58899 nginx: master process /usr/sbin/nginx -g daemon on; master_process on;
             └─58900 nginx: worker process

Jan 31 20:36:08 vagrant systemd[1]: Starting A high performance web server and a reverse proxy server...
Jan 31 20:36:08 vagrant systemd[1]: Started A high performance web server and a reverse proxy server.

root@vagrant:~# vi /etc/hosts
127.0.0.1       localhost
127.0.1.1       vagrant.vm      vagrant
127.0.0.1       devops.myshelov.com

# The following lines are desirable for IPv6 capable hosts
::1     localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters

root@vagrant:~# ping devops.myshelov.com
PING devops.myshelov.com (127.0.0.1) 56(84) bytes of data.
64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=64 time=0.031 ms
64 bytes from localhost (127.0.0.1): icmp_seq=2 ttl=64 time=0.058 ms
64 bytes from localhost (127.0.0.1): icmp_seq=3 ttl=64 time=0.059 ms
64 bytes from localhost (127.0.0.1): icmp_seq=4 ttl=64 time=0.068 ms
64 bytes from localhost (127.0.0.1): icmp_seq=5 ttl=64 time=0.050 ms
^C
--- devops.myshelov.com ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4097ms
rtt min/avg/max/mdev = 0.031/0.053/0.068/0.012 ms
```  
7. *По инструкции настройте nginx на https, используя ранее подготовленный сертификат:*  
   - *можно использовать стандартную стартовую страницу nginx для демонстрации работы сервера;*  
   - *можно использовать и другой html файл, сделанный вами;*  

**Ответ:**  
```bash
root@vagrant:~# vi /etc/nginx/sites-enabled/default
server {

        listen 443 ssl default_server;
        listen [::]:443 ssl default_server;
        ssl_certificate /root/devops.myshelov.com.crt.pem;
        ssl_certificate_key /root/devops.myshelov.com.crt.key;
}

root@vagrant:~# nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
root@vagrant:~# systemctl reload nginx
root@vagrant:~# curl -I https://devops.myshelov.com
HTTP/1.1 200 OK
Server: nginx/1.18.0 (Ubuntu)
Date: Mon, 31 Jan 2022 22:07:11 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 21 Apr 2020 14:09:01 GMT
Connection: keep-alive
ETag: "5e9efe7d-264"
Accept-Ranges: bytes
```  
8. *Откройте в браузере на хосте https адрес страницы, которую обслуживает сервер nginx.*  

**Ответ:**  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/1dv.jpg)  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/2dv.jpg) 

9. *Создайте скрипт, который будет генерировать новый сертификат в vault:*  
- генерируем новый сертификат так, чтобы не переписывать конфиг nginx;
- перезапускаем nginx для применения нового сертификата.  
**Ответ:**  
```
root@vagrant:~# nano sert.sh
#!/bin/bash
vault write -format=json pki_int/issue/example-dot-com common_name="devops.myshelov.com" \ 
   ttl=720h > /root/devops.myshelov.com.crt
cat /root/devops.myshelov.com.crt | jq -r .data.certificate > /root/devops.myshelov.com.crt.pem
cat /root/devops.myshelov.com.crt | jq -r .data.issuing_ca >> /root/devops.myshelov.com.crt.pem
cat /root/devops.myshelov.com.crt | jq -r .data.private_key > /root/devops.myshelov.com.crt.key
systemctl reload nginx

root@vagrant:~# chmod ugo+x sert.sh
```
![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3dv.jpg)  

10. *Поместите скрипт в crontab, чтобы сертификат обновлялся какого-то числа каждого месяца в удобное для вас время.*  
**Ответ:**  
```
root@vagrant:~# crontab -l
....
# m h  dom mon dow   command
0 0 7 * * /root/sert.sh
```