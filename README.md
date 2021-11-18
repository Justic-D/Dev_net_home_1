# Репозиторий для домашних заданий по курсу DevOps
## ДЗ 3.1
#### Работа в терминале, лекция 1
1. VirtualBox установлен
2. Vagrant установлен
3. Git Bash
4. Выполнено
5. RAM: 1024 mb  
CPU: 1 cpu  
HDD: 64 gb  
Video: 4 mb  
6. Добавить в VagrantFile:
```
   config.vm.provider "virtualbox" do |v|  
       v.memory = 2048  
       v.cpus = 3  
   end
   ```
7. Выполнено
8. Переменной `HISTFILESIZE` можно задать максимальное число строк журнала history, это описывается на строчке 589.  
Переменной `HISTSIZE` можно задать число команд для сохранения журнала history, это описывается на строчке 598.  
Директива `ignoreboth` является сокращением для ignorespace и ignoredups.  
    - ignorespace - не сохранять команды начинающиеся с пробела,   
    - ignoredups - не сохранять команду, если такая уже имеется в истории
9. `{и}` - зарезервированные слова, список, в т.ч. список команд. В отличии от `(и)` должны встречаться там, где разрешено распознать зарезервированное слово. Используется в различных условных циклах, условных операторах, или ограничивают тело функции. 
В командах выполняет подстановку элементов из списка, например mkdir ./DIR_{A..Z} - создаст каталоги с именами DIR_A, DIR_B и т.д. до DIR_Z.  
Описано в строке 197.
10. `touch file-{000000..100000}`  
Нет, 300000 не получится, слишком длинный список аргументов.  
Максимальное количество аргументов 2097152.
11. `[[ ... ]]` это конструкции проверки условий, расширенный вариант команды test.  
Bash исполняет `[[ ... ]]` как один элемент, который имеет код возврата.  
Конструкция `[[ -d /tmp ]]` возвращат 1 если директория tmp существует в корне.  
Например:
```
if [[ -d /tmp ]] 
then 
  echo "Директория tmp надена" 
else
  echo "Директория tmp не надена"
fi
```
12. 
```
$ mkdir /tmp/new_path_directory
$ cp /usr/local/bin/bash /tmp/new_path_directory/
$ export PATH=/tmp/new_path_directory:$PATH
$ source ~/.bashrc
```
13. Команда `at` используется для назначения одноразового задания на заданное время, а команда `batch` — для назначения одноразовых задач, которые должны выполняться, когда загрузка системы становится меньше 0,8.
14. `vagrant suspend`

## ДЗ 2.4
#### Инструменты Git
1. $ git show aefea   
   commit aefead2207ef7e2aa5dc81a34aedf0cad4c32545 Update CHANGELOG.md  
  

2. $ git show 85024d3   
   tag: v0.12.23  
  

3. $ git show b8d720   
   Merge: 56cd7859e05c36c06b56d013b55a252d0bb7e158 9ea88f22fc6269854151c571162c5bcf958bee2b  
  

4. $ git show v0.12.23..v0.12.24 --compact-summary  
   commit 85024d3100126de36331c6982bfaac02cdab9e76 v0.12.23  
   commit 225466bc3e5f35baa5d07197bbc079345b77525e Cleanup after v0.12.23 release  
   commit dd01a35078f040ca984cdd349f18d0b67e486c35 Update CHANGELOG.md  
   commit 4b6d06cc5dcb78af637bbb19c198faff37a066ed Update CHANGELOG.md  
   commit d5f9411f5108260320064349b757f55c09bc4b80 command: Fix bug when using terraform login on Windows  
   commit 06275647e2b53d97d4f0a19a0fec11f6d69820b5 Update CHANGELOG.md  
   commit 5c619ca1baf2e21a155fcdb4c264cc9e24a2a353 website: Remove links to the getting started guide's old location  
   commit 6ae64e247b332925b872447e9ce869657281c2bf registry: Fix panic when server is unreachable  
   commit 3f235065b9347a758efadc92295b540ee0a5e26e Update CHANGELOG.md  
   commit b14b74c4939dcab573326f4e3ee2a62e23e12f89 [Website] vmc provider links  
   commit 33ff1c03bb960b332be3af2e333462dde88b279e v0.12.24  
  

5. $ git grep -p func*.providerSource*.  
   $ git log -L :providerSource:provider_source.go -p -s  
   commit 8c928e83589d90a031f811fae52a81be7153e82f main: Consult local directories as potential mirrors of providers  
  

6. $ git grep -p func*.globalPluginDirs*.  
   $ git log -L :globalPluginDirs:plugins.go -p -s  
   commit 78b12205587fe839f10d946ea3fdc06719decb05 Remove config.go and update things using its aliases  
   commit 52dbf94834cb970b510f2fba853a5b49ad9b1a46 keep .terraform.d/plugins for discovery  
   commit 41ab0aef7a0fe030e84018973a64135b11abcd70 Add missing OS_ARCH dir to global plugin paths  
   commit 66ebff90cdfaa6938f26f908c7ebad8d547fea17 move some more plugin search path logic to command  
   commit 8364383c359a6b738a436d1b7745ccdce178df47 Push plugin discovery down into command package  
  

7. $ git log -S synchronizedWriters --oneline  
   $ git show 5ac311e2a  
   Author: Martin Atkins <mart@degeneration.co.uk>  

## ДЗ 2.3
#### Ветвления в Git
Цель задания - попробовать на практике то, как выглядит решение конфликтов. 

## ДЗ 2.1
#### Дирректория Terraform содержит файл .gitignore. 
Игнорируются: 
- Local .terraform directories
- .tfstate files
- сrash log files
- override files
- CLI configuration files