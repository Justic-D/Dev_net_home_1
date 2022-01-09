Если нужно изменить самую последнюю фиксацию, например, добавить что-нибудь забытое или изменить комментарий, то команда git commit --amend создаст полностью новый набор файловых объектов, деревьев и объектов фиксации. После этого обновляется указатель ветки. Если далее потребуется откатить изменения, то необходимо только вернуть указатель на предыдущую фиксацию командой git reset --hard HEAD@{1}.

netdata failed to build...  
./packaging/installer/install-required-packages.sh --dont-wait --non-interactive netdata  
sudo ./netdata-installer.sh

echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null

dig @8.8.8.8 download.docker.com

dig @8.8.4.4 download.docker.com

