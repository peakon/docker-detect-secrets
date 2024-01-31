#!/bin/sh

curl -H 'Content-type: application/json' \
 --data "{\"channel\":\"GBK5KEHAP\",\"text\":\"Potential secret in Github!\", \"attachments\":[{\"color\": \"warning\", \"title\": \"A new potential secret was commited in Github\", \"text\": \"https://github.com/$BUILDKITE_ORGANIZATION_SLUG/$BUILDKITE_PIPELINE_SLUG/commit/$BUILDKITE_COMMIT\"}]}" \
 -H "Authorization: Bearer $PEAKBOT_SLACK_TOKEN" \
 -X POST https://slack.com/api/chat.postMessage
