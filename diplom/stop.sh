#!/bin/zsh

export YC_CLOUD_ID="b1gjteq1gt8stbm9on6s"
export YC_FOLDER_ID="b1gophv54t8lthp7gghu"
export CLOUDFLARE_API_TOKEN=QbWDMHW5Vg8iaQL0Z71rUXlgyY8xTv4U815sev7m
export YC_SERVICE_ACCOUNT_KEY_FILE=key.json

cd src/terraform/
terraform destroy -auto-approve