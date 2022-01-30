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
