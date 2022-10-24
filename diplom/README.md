# Дипломный практикум в YandexCloud

#### Цели:  
  
1. Зарегистрировать доменное имя (любое на ваш выбор в любой доменной зоне).
2. Подготовить инфраструктуру с помощью Terraform на базе облачного провайдера YandexCloud.
3. Настроить внешний Reverse Proxy на основе Nginx и LetsEncrypt.
4. Настроить кластер MySQL.
5. Установить WordPress.
6. Развернуть Gitlab CE и Gitlab Runner.
7. Настроить CI/CD для автоматического развёртывания приложения.
8. Настроить мониторинг инфраструктуры с помощью стека: Prometheus, Alert Manager и Grafana.

Этапы выполнения:

#### 1. Регистрация доменного имени.  
Зарегистрировано доменное имя `myshelov.site`.  
  
#### 2. Создание инфраструктуры.  
Terraform сконфигурирован и создание инфраструктуры посредством Terraform возможно без дополнительных ручных действий. 
![](diplom/img/04.jpg)  
![](diplom/img/05.jpg)  

#### 3. Установка Nginx и LetsEncrypt  
Настроены все upstream для URL. В браузере можно открыть любой из этих URL и увидеть ответ сервера (502 Bad Gateway).  
![](diplom/img/06.jpg)  
![](diplom/img/02.jpg)  
![](diplom/img/12.jpg)  

#### 4. Установка кластера MySQL  
Имена серверов: db01.myshelov.site и db02.myshelov.site  

#### 5. Установка WordPress
В браузере можно открыть URL https://www.myshelov.site  и увидеть главную страницу WordPress.  
![](diplom/img/03.jpg)  

#### 6. Установка Gitlab CE и Gitlab Runner
Интерфейс Gitlab доступен по https.
![](diplom/img/08.jpg)  

#### 7. Установка Prometheus, Alert Manager, Node Exporter и Grafana  
Получение метрик со всей инфраструктуры.
![](diplom/img/09.jpg)  
![](diplom/img/10.jpg)  
![](diplom/img/11.jpg)  

#### Что необходимо для сдачи задания

1. Репозиторий со всеми Terraform манифестами и готовность продемонстрировать создание всех ресурсов с нуля.  
2. Репозиторий со всеми Ansible ролями и готовность продемонстрировать установку всех сервисов с нуля.  
3. Скриншоты веб-интерфейсов всех сервисов работающих по HTTPS на вашем доменном имени.  

* https://www.you.domain (WordPress)  
* https://gitlab.you.domain (Gitlab)  
* https://grafana.you.domain (Grafana)  
* https://prometheus.you.domain (Prometheus)  
* https://alertmanager.you.domain (Alert Manager)  

Все репозитории хранятся на github.com [github.com](https://github.com/WiktorMysz/devops-netology/tree/main/diplom/)
