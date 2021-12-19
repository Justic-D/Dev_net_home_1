# Репозиторий для домашних заданий по курсу DevOps
## ДЗ 3.4
#### Операционные системы, лекция 2
1. *Используя знания из лекции по systemd, создайте самостоятельно простой unit-файл для node_exporter:*  
    - *поместите его в автозагрузку,*  
    - *предусмотрите возможность добавления опций к запускаемому процессу через внешний файл (посмотрите, например, на systemctl cat cron),*  
    - 8удостоверьтесь, что с помощью systemctl процесс корректно стартует, завершается, а после перезагрузки автоматически поднимается.*  
####Ответ:  
    - Node_exporter установлен, порт  9100 проброшен:  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_1.jpg)
    - Node_exporter помещен в автозагрузку:  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_3.jpg)
    - Предусмотрена возможность добавления опций:  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_2.jpg)
    - Сервис стартует и запускается корректно:  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_4.jpg)
    - При перезапуске переменная окружения выставляется:  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_5.jpg)  
2. *Ознакомьтесь с опциями node_exporter и выводом /metrics по-умолчанию. Приведите несколько опций, которые вы бы выбрали для базового мониторинга хоста по CPU, памяти, диску и сети.*  
####Ответ:  
```
CPU:
node_cpu_seconds_total{cpu="0",mode="idle"} 1046.19
node_cpu_seconds_total{cpu="0",mode="system"} 14.38
node_cpu_seconds_total{cpu="0",mode="user"} 17.06
process_cpu_seconds_total 0.24

Memory:
node_memory_MemAvailable_bytes 5.59202304e+08
node_memory_MemFree_bytes 7.5513856e+07

Disk:
node_disk_io_time_seconds_total{device="sda"} 51.42
node_disk_read_bytes_total{device="sda"} 6.76783104e+08
node_disk_read_time_seconds_total{device="sda"} 94.678
node_disk_write_time_seconds_total{device="sda"} 5.863

Network:
node_network_receive_bytes_total{device="eth0"} 170971
node_network_receive_bytes_total{device="eth0"} 189159
node_network_transmit_bytes_total{device="eth0"} 201603
node_network_transmit_errs_total{device="eth0"} 0
```
3. *Установите в свою виртуальную машину Netdata. Воспользуйтесь готовыми пакетами для установки (sudo apt install -y netdata). После успешной установки:*  
- *в конфигурационном файле /etc/netdata/netdata.conf в секции [web] замените значение с localhost на bind to = 0.0.0.0,*  
- *добавьте в Vagrantfile проброс порта Netdata на свой локальный компьютер и сделайте vagrant reload:*

`config.vm.network "forwarded_port", guest: 19999, host: 19999`
- *После успешной перезагрузки в браузере на своем ПК (не в виртуальной машине) вы должны суметь зайти на localhost:19999. Ознакомьтесь с метриками, которые по умолчанию собираются Netdata и с комментариями, которые даны к этим метрикам.*  
####Ответ:  
- Netdata установлена:  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_6.jpg)  
4. *Можно ли по выводу dmesg понять, осознает ли ОС, что загружена не на настоящем оборудовании, а на системе виртуализации?*  
####Ответ: 
По выводу dmesg видим что - да, а так же тип ВМ, так как есть соответсвующая строка:  
```
vagrant@vagrant:~$ dmesg |grep virtualiz
[    0.004879] CPU MTRRs all blank - virtualized system.
[    0.221288] Booting paravirtualized kernel on KVM
[    4.883013] systemd[1]: Detected virtualization oracle.
```
5. *Как настроен sysctl fs.nr_open на системе по-умолчанию? Узнайте, что означает этот параметр. Какой другой существующий лимит не позволит достичь такого числа (ulimit --help)?*  
####Ответ: 
`sysctl` настроен по умолчанию так:
```
vagrant@vagrant:~$ /sbin/sysctl -n fs.nr_open
1048576
```
Это максимальное число открытых дескрипторов для ядра (системы), для пользователя задать больше этого числа нельзя. 
Число задается кратное 1024, в данном случае =1024*1024.  
Но максимальный предел ОС можно посмотреть так:
```
vagrant@vagrant:~$ cat /proc/sys/fs/file-max
9223372036854775807
```
Мягкий лимит (так же ulimit -n) на пользователя (может быть увеличен в процессе работы):
```
vagrant@vagrant:~$ ulimit -Sn
1024
```
Жесткий лимит на пользователя (не может быть увеличен, только уменьшен).
```
vagrant@vagrant:~$ ulimit -Hn
1048576
```
Оба эти лимита не могут превысить `fs.nr_open`.  
6. *Запустите любой долгоживущий процесс (не ls, который отработает мгновенно, а, например, sleep 1h) в отдельном неймспейсе процессов; покажите, что ваш процесс работает под PID 1 через nsenter. Для простоты работайте в данном задании под root (sudo -i). Под обычным пользователем требуются дополнительные опции (--map-root-user) и т.д.*  
####Ответ:  
   ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_7.jpg)
   ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_8.jpg)  
7. *Найдите информацию о том, что такое :(){ :|:& };:. Запустите эту команду в своей виртуальной машине Vagrant с Ubuntu 20.04 (это важно, поведение в других ОС не проверялось). Н екоторое время все будет "плохо", после чего (минуты) – ОС должна стабилизироваться. Вызов dmesg расскажет, какой механизм помог автоматической стабилизации. Как настроен этот механизм по-умолчанию, и как изменить число процессов, которое можно создать в сессии?*  
####Ответ:  
Это так называемая Fork-бомба. Команда определяет функцию под названием `:` ( :() ). 
Внутри функции ( {...} ) есть `:|:&`, которая выглядит следующим образом:  
    - `:` снова вызывает эту функцию `:`.  
    - `|` означает передачу выходных данных в команду.  
    - `:` после `|` означает трубу к функции `:`.  
    - `&`, в данном случае, означает выполнение предыдущего в фоновом режиме.  
     
   Затем есть `;`, который известен как разделитель команд.  
   Наконец, `:` запускает эту "цепную реакцию". Таким образом, каждый экземпляр `:` начинает два новых `:` и так далее...  
   Это приводит к тому, что компьютеру не хватает памяти из-за бесконечного разветвления процесса.  

С разрывами строк понятнее:
```
:()
{
    :|:&
};
:
```
Механизм судя по всему этот:  
```
[ 3947.162817] cgroup: fork rejected by pids controller in /user.slice/user-1000.slice/session-6.scope
```
`Systemd` создает группу для каждого пользователя, и все процессы пользователя принадлежат одной и той же группе.  

`Cgroups` - это механизм Linux, устанавливающий ограничения на системные ресурсы, такие как максимальное количество процессов, циклы ЦП, использование ОЗУ и т. Д. Это другой, более современный уровень ограничения ресурсов, чем ulimit (который использует getrlimit() системный вызов).  

Если запустить `systemctl status user-<uid>.slice` (где <uid> - cgroup пользователя), увидим текущее и максимальное количество задач (процессов и потоков), которые разрешены в этой cgroup.  
```
root@vagrant:~# systemctl status user-1000.slice
● user-1000.slice - User Slice of UID 1000
     Loaded: loaded
    Drop-In: /usr/lib/systemd/system/user-.slice.d
             └─10-defaults.conf
     Active: active since Sun 2021-12-19 01:47:55 UTC; 2h 13min ago
       Docs: man:user@.service(5)
      Tasks: 37 (limit: 2357)
     Memory: 38.9M
```
По умолчанию максимальное количество задач, которое systemd разрешает для каждого пользователя, составляет 33% от «общесистемного максимума» (sysctl kernel.threads-max); обычно это составляет около 10000 задач. Если необходимо изменить это ограничение:  

В systemd v239 и более поздних версиях пользователь по умолчанию устанавливается через `TasksMax = in`:
```
    /usr/lib/systemd/system/user-.slice.d/10-defaults.conf
```
Чтобы настроить ограничение для конкретного пользователя (которое будет применено сразу же, а также сохранено в /etc/systemd/system.control), выполните:
```
    systemctl [--runtime] set-property user-<uid>.slice TasksMax=<value>
```
Также можно использовать механизмы переопределения настроек устройства (например, systemctl edit), но они потребуют перезагрузки.  
Если вы хотите изменить ограничение для каждого пользователя, вы можете создать `/etc/systemd/system/user-.slice.d/15-limits.conf`.


## ДЗ 3.3
#### Операционные системы, лекция 1
1. Системный вызов CD `chdir("/tmp")`  
2. База данных `file` находится здесь `/usr/share/misc/magic.mgc`  
Пытается искать еще и здесь:  
```
newfstatat(AT_FDCWD, "/home/wiktormyszolow/.magic.mgc", 0x7fff3633b110, 0) = -1 ENOENT (Нет такого файла или каталога)
newfstatat(AT_FDCWD, "/home/wiktormyszolow/.magic", 0x7fff3633b110, 0) = -1 ENOENT (Нет такого файла или каталога)
openat(AT_FDCWD, "/etc/magic.mgc", O_RDONLY) = -1 ENOENT (Нет такого файла или каталога)
newfstatat(AT_FDCWD, "/etc/magic", {st_mode=S_IFREG|0644, st_size=111, ...}, 0) = 0
openat(AT_FDCWD, "/etc/magic", O_RDONLY) = 3
```
3. Используем lsof чтобы найти удаленный, но открытый файл, все еще занимающий место:  
```
# lsof | grep deleted | grep 703bebcf.log
gnome-she 1027                 wiktormyszolow   50r      REG               0,38    32768        955 /home/wiktormyszolow/share/metadata/703bebcf.log (deleted)
```
Найдем запись, `/proc/<pid>/fd/` которая соответствует дескриптору файла:  
```
$ ls -l /proc/1027/fd/703bebcf.log
lrwx------. 1 wiktormyszolow wiktormyszolow 64 дек  5 01:13 77 -> /home/wiktormyszolow/share/metadata/703bebcf.log (deleted)
```
Далее `cat /dev/null` в FD:  
`$ cat /dev/null > /proc/1027/fd/77`

Процесс еще открыт, но теперь имеет длину 0:  
```
gnome-she 1027                 wiktormyszolow   50r      REG               0,38    0        955 /home/wiktormyszolow/share/metadata/703bebcf.log (deleted)
```
4. Процессы "Зомби", в отличие от "сирот", освобождают свои ресурсы, но не освобождают запись в таблице процессов. Запись освободиться при вызове wait() родительским процессом.
5. `# /usr/sbin/opensnoop-bpfcc`  
```
PID    COMM               FD ERR PATH
870    vminfo              4   0 /var/run/utmp
559    dbus-daemon        -1   2 /usr/local/share/dbus-1/system-services
559    dbus-daemon        26   0 /usr/share/dbus-1/system-services
559    dbus-daemon        -1   2 /lib/dbus-1/system-services
559    dbus-daemon        26   0 /var/lib/snapd/dbus-1/system-services/
```
6. Системный вызов `uname()`.  
`$ man 2 uname`:
> Часть информации из структуры utsname может быть получена также через /proc/sys/kernel/ {ostype, hostname, osrelease, version, domainname}.  
7. `&&` - условный оператор,   
а `;`  - разделитель последовательных команд.  
`test -d /tmp/some_dir; echo Hi` - `echo` отработает в любом случае.  
`test -d /tmp/some_dir && echo Hi` - `echo` отработает только при успешном завершении команды test.  
`set -e` - прерывает сессию при любом ненулевом значении исполняемых команд в конвейере кроме последней.  
Использование `&&` вместе с `set -e` вероятно не имеет смысла, так как при ошибке выполнение команды прекратиться.
8. `-e` - прерывает выполнение исполнения при ошибке любой команды кроме последней в последовательности.   
`-x` - вывод трейса простых команд.   
`-u` - неустановленные/не заданные параметры и переменные считаются как ошибки, с выводом в stderr текста ошибки и выполнит завершение неинтерактивного вызова.  
`-o` - pipefail возвращает код возврата набора/последовательности команд, ненулевой при последней команды или 0 для успешного выполнения команд.  
В сценариях повышает детализациею вывода ошибок (логирования), и завершит сценарий при наличии ошибок, на любом этапе выполнения сценария, кроме последней завершающей команды.
9. `$ ps -A -o s | sort -k2 | uniq -c | sort -n`
```
      1 R
      4 T
     42 I
     94 S
```
Наиболее часто встречающиеся статусы:  
     `I` - Фоновые (бездействующие) процессы ядра (42 процесса).  
     `S` - Процессы ожидающие завершения (94 процесса).  
  
Дополнительные буквы означают дополнительные характеристики - например приоритет.
## ДЗ 3.2
#### Работа в терминале, лекция 2
1. Команда cd - это команда изменения рабочего каталога, встроенная в shell.  
Работая в терминале логичнее преходить по директориям с помощью встроенной функции.  
Если использовать внешнюю функцию, то каждый раз после смены каталога придется вызывать bash из этого каталога, но тогда мы получим новый shell, а на вызвавший shell он влиять не будет.  
2. ``grep <some_string> <some_file> -c``
3. Процесс systemd.
4. ``ls % 2>/dev/pts/1``
5. Да, получится:
```
$ cat newfile
cat: newfile: No such file or directory  
$ vi newfile  
$ cat newfile  
newline1  
$ cat newfile-out  
cat: newfile-out: No such file or directory  
$ cat <newfile >newfile-out  
$ cat newfile-out  
newline1  
```
6. Получится. Для этого нужно направить вывод `$ echo Hello from pts0 to tty0 >/dev/tty0`.  
Наблюдать в графическом режиме не получиться, нужно переключиться в контекст TTY.  
7. `>&` - это синтаксис для перенаправления потока на другой файловый дескриптор, в нашем случае это дескриптор 1, т.е stdout. Таким образом командой `bash 5>&1` мы создаем дескриптор 5 процесса bash и перенаправляем его в stdout.  
`$$` - это PID процесса bash.  
```
$ echo $$  
1501  
$ ls -la /proc/1501/fd/ 
lrwx------ 1 vagrant vagrant 64 Nov 26 21:28 0 -> /dev/pts/0
lrwx------ 1 vagrant vagrant 64 Nov 26 21:28 1 -> /dev/pts/0
lrwx------ 1 vagrant vagrant 64 Nov 26 21:28 2 -> /dev/pts/0
lrwx------ 1 vagrant vagrant 64 Nov 26 21:28 255 -> /dev/pts/0
lrwx------ 1 vagrant vagrant 64 Nov 26 21:28 5 -> /dev/pts/0
```  
Эти файл дескрипторы связаны с устройством 0 псевдотерминала /dev/pts, т.е. с нашим терминалом:
```
$ who
vagrant  pts/0
```
Поэтому `echo netology > /proc/$$/fd/5` - результат команды `echo netology` перенаправляет в файловый дескриптор 5 процесса 1501 (bash), а оттуда на 1 (stdout).  
На выходе имеем `netology`.  
8. `$ ls % 5>&2 2>&1 1>&5 | grep % -c`  
9. Команда выводит переменные окружения. Мы также можем увидеть список всех переменных окружения, используя команды `env` или `printenv`.  
10. `/proc/<PID>/cmdline` - этот доступный только для чтения файл содержит полный путь до исполняемого файла процесса [PID], если только процесс не является зомби. В последнем случае в этом файле ничего нет: то есть чтение этого файла вернет 0 символов. Аргументы командной строки появляются в этом файле в виде набора строк, разделенных нулевыми байтами ('\ 0'), с последующим нулевым байтом после последней строки.   (строка 172).  
`/proc/<PID>/exe` - этот файл представляет собой символическую ссылку, содержащую фактический путь к исполняемой команде для процесса [PID], `cat` выведет содержимое запущенного файла, запуск этого файла, запустит еще одну копию того же исполняемого файла, который запускается процессом [pid] (строка 212).
11. `$ grep sse /proc/cpuinfo`  
SSE 4.2  
12. Так происходит потому что ожидается подключение пользователя, а не другого процесса. Опция `-t` принудительно вызывает tty, даже если ssh не имеет локального tty. 
13. ```
    Установка:
    sudo apt-get install reptyr  
    
    Использование в новой консоли:  
    screen -S <screen name>  
    reptyr <PID of running process to attach>
    ```
14. Команда `tee` делает вывод одновременно и в файл, указанный в качестве параметра, и в stdout, 
в данном примере команда получает вывод из stdin, перенаправленный через pipe от stdout команды echo
поскольку команда запущена от sudo она получает права на запись в файл.

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