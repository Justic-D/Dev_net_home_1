# Манифест Docker образа.
FROM centos:7
RUN mkdir /ansible && \
    mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible

CMD ["ansible-playbook", "--version",  "/usr/sbin/init"]