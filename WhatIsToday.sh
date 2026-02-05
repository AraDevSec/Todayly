#!/bin/bash
set -euo pipefail
cd /home/ubuntu/Todayly
SlackAPI=$(cat /home/ubuntu/.SlackAPI)
export SlackAPI
NOW=$(date '+%Y-%m-%d %H:%M:%S')
MMDD=$(date +%m%d)

URL="https://api.whatistoday.cyou/index.cgi/v3/anniv/${MMDD}"

TodayAnniv=$(curl -sS "$URL" | jq -r --arg now "$NOW" \
  '"Test「\(.mmdd)」「\($now)」"')

OAUTH_TOKEN=$SlackAPI

payload=$(jq -n --arg txt "$TodayAnniv" '{profile:{status_text:$txt}}')

curl -sS -X POST \
  -H "Authorization: Bearer ${OAUTH_TOKEN}" \
  -H "Content-type: application/json; charset=utf-8" \
  -d "$payload" \
 https://slack.com/api/users.profile.set
