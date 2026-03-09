#!/bin/bash
# Post-apply Slack notification
# Set SLACK_WEBHOOK_URL as a sensitive env0 variable

set -e

WEBHOOK_URL="${SLACK_WEBHOOK_URL:-}"

if [ -z "$WEBHOOK_URL" ]; then
  echo "SLACK_WEBHOOK_URL not set — skipping notification"
  exit 0
fi

MESSAGE="env0 deployment complete: *${ENV0_ENVIRONMENT_NAME}* in project *${ENV0_PROJECT_NAME}* ✅"

curl -s -X POST "$WEBHOOK_URL" \
  -H "Content-Type: application/json" \
  -d "{\"text\": \"$MESSAGE\"}"

echo "Slack notification sent."