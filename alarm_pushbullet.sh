#!/bin/sh
TOKEN=(write your access token)

/usr/bin/curl -H "Content-Type: application/json" \
              -H "Access-Token: ${TOKEN}" \
              -X POST \
              --data-binary "{\"type\": \"note\", \"TITLE\": \"vCenter Alarm\", \"body\": \"${VMWARE_ALARM_NAME}\n${VMWARE_ALARM_TARGET_NAME}\n${VMWARE_ALARM_TRIGGERINGSUMMARY}\"}" \
              https://api.pushbullet.com/v2/pushes
