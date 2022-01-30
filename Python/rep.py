#!/usr/bin/env python3
print("Введите полный путь к репозиторию(со знаком '/' в конце):")
dir = input()

import os

if dir != "":
        bash_command = [f"cd {dir}",  "git status "]
        dircheck = os.listdir(dir);

        if dircheck.__contains__(".git"):
                result_os = os.popen(' && '.join(bash_command)).read()
                for result in result_os.split('\n'):
                    if result.find('modified') != -1:
                        prepare_result = result.replace('modified:', dir)
                        print(prepare_result)
        else:
                print("There is no git repository on the entered path")