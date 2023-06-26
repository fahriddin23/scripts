#!/bin/bash

slack_message() {
curl -X POST \
    -H 'Content-type: application/json' \
    --data '{"text":"'"$droplet_name $status"'"}' $SLACK_URL
}

droplets="""$(curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" \
  "https://api.digitalocean.com/v2/droplets")"""

#  droplet_name=$(echo $droplets | jq -r .droplets[1,2,3].name)
#  status=$(echo $droplets | jq -r .droplets[1,2,3].status)

slack_message 

