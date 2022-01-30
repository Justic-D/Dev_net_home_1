# Домашнее задание к занятию  
## 4.3  
#### Языки разметки JSON и YAML  
1. *Мы выгрузили JSON, который получили через API запрос к нашему сервису:*  

```json
{ "info" : "Sample JSON output from our service\t",
    "elements" :[
        { "name" : "first",
        "type" : "server",
        "ip" : 7175 
        },
        { "name" : "second",
        "type" : "proxy",
        "ip : 71.78.22.43
        }
    ]
}
```  
Нужно найти и исправить все ошибки, которые допускает наш сервис  

**Ответ:**  
- 1 строка - неэкранированный спецсимвол `\t` (горизонтальная табуляция)   
- 1,3,7 строки - после скобки `{` сделать перенос (для лучшей читаемости)  
- 5 строка - неверная запись ip адреса. Он вообще неправильно написан и должен быть в кавычках. 
- 9 строка - пропущены закрывающиеся кавычки `ip"` и кавычки на значении  

исправленный код:   

```json
{
 "info" : "Sample JSON output from our service\\t",
  "elements" : [
    {
     "name" : "first",
     "type" : "server",
     "ip" : "71.75.22.1" 
    },
    {
     "name" : "second",
     "type" : "proxy",
     "ip" : "71.78.22.43"
    }
  ]
}
```  
2. *В прошлый рабочий день мы создавали скрипт, позволяющий опрашивать веб-сервисы и получать их IP. К уже реализованному функционалу нам нужно добавить возможность записи JSON и YAML файлов, описывающих наши сервисы. Формат записи JSON по одному сервису: `{ "имя сервиса" : "его IP"}`. Формат записи YAML по одному сервису: `- имя сервиса: его IP`. Если в момент исполнения скрипта меняется IP у сервиса - он должен так же поменяться в yml и json файле.*  

**Ответ:**  
```python
#!/usr/bin/env python3

import socket
import json
import yaml
import deepdiff


def save_data(dict_url_now):
    json.dump(dict_url_now, open('host.json', 'w'), indent=2)
    yaml.dump(dict_url_now, open('host.yml', 'w'), explicit_start=True, explicit_end=True)


def check_url(url):
    try:
        ip = socket.gethostbyname(url)
    except Exception:
        ip = ''
    return ip


urls = ('drive.google.com', 'mail.google.com', 'google.com')
dict_url_now = {}
for url in urls:
    dict_url_now[url] = check_url(url)
    print(url + " : " + dict_url_now[url])

try:
    dict_url_old = json.load(open('host.json'))
except Exception:
    dict_url_old = dict_url_now
    save_data(dict_url_now)

if dict_url_now != dict_url_old:
    ch = deepdiff.DeepDiff(dict_url_now, dict_url_old)['values_changed']
    for c in ch:
        print('[ERROR]', '<' + c[6:][:-2] + '>', 'IP mismatch:', '<' + ch[c]["old_value"] + '>', '<' + ch[c]["new_value"
        ] + '>')
    save_data(dict_url_now)

```  
Пример вывода:  
```python
% python3 print.py
drive.google.com : 64.233.162.194
mail.google.com : 173.194.222.19
google.com : 173.194.221.100
[ERROR] <drive.google.com> IP mismatch: <64.233.162.194> <74.125.131.194>
[ERROR] <mail.google.com> IP mismatch: <173.194.222.19> <74.125.205.19>
[ERROR] <google.com> IP mismatch: <173.194.221.100> <173.194.221.102>
```  
Содержимое host.json:  
```json
{
  "drive.google.com": "64.233.162.194",
  "mail.google.com": "173.194.222.19",
  "google.com": "173.194.221.100"
}
```  
Содержимое host.yml:  
```yaml
---
drive.google.com: 64.233.162.194
google.com: 173.194.221.100
mail.google.com: 173.194.222.19
...
```  