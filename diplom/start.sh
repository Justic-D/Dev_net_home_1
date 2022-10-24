#!/bin/bash

#cat /dev/null > /home/user/.ssh/known_hosts

export YC_CLOUD_ID="b1gjteq1gt8stbm9on6s"
export YC_FOLDER_ID="b1gophv54t8lthp7gghu"
export CLOUDFLARE_API_TOKEN=QbWDMHW5Vg8iaQL0Z71rUXlgyY8xTv4U815sev7m
#export CLOUDFLARE_EMAIL=myshelov@gmail.com
export YC_SERVICE_ACCOUNT_KEY_FILE=key.json

cd src/terraform/ || return
terraform init&& terraform plan&& terraform apply -auto-approve
terraform output -json > ip.json

sleep 7

node01_proxy_public=$(< ip.json jq -r '.["node01_proxy_public"] | .value')
export node01_proxy_public
node01_proxy_private=$(< ip.json jq -r '.["node01_proxy_private"] | .value')
export node01_proxy_private
#echo "$node01_proxy_private"
node02_db01_private=$(< ip.json jq -r '.["node02_db01_private"] | .value')
export node02_db01_private
#echo "$node02_db01_private"
node03_db02_private=$(< ip.json jq -r '.["node03_db02_private"] | .value')
export node03_db02_private
#echo "$node03_db02_private"
node04_app_private=$(< ip.json jq -r '.["node04_app_private"] | .value')
export node04_app_private
#echo "$node04_app_private"
node05_gitlab_private=$(< ip.json jq -r '.["node05_gitlab_private"] | .value')
export node05_gitlab_private
#echo "$node05_gitlab_private"
node06_runner_private=$(< ip.json jq -r '.["node06_runner_private"] | .value')
export node06_runner_private
node07_monitoring_private=$(< ip.json jq -r '.["node07_monitoring_private"] | .value')
export node07_monitoring_private

cd - || return
cd src/ansible/ || return
envsubst < "hosts.tmp" > "hosts"

sleep 15
rm ~/.ssh/known_hosts
ansible-playbook playbook.yml -i hosts