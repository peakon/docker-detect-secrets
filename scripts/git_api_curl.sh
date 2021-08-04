#!/bin/sh

# curl -X POST -H "Accept: application/json" -H "Authorization: Bearer $GITHUB_SECURITY_ACCESS_TOKEN" https://api.github.com/repos/$BUILDKITE_ORGANIZATION_SLUG/$BUILDKITE_PIPELINE_SLUG/commits/$BUILDKITE_COMMIT/comments -d '{"body":"A new potential secret was discovered in this commit @peakon/security"}'
curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"Potential secret in Github!\", \"attachments\":[{\"color\": \"warning\", \"title\": \"A new potential secret was commited in Github\", \"text\": \"https://github.com/$BUILDKITE_ORGANIZATION_SLUG/$BUILDKITE_PIPELINE_SLUG/commit/$BUILDKITE_COMMIT\"}]}" $SF_DEFAULT_SLACK_WEBHOOK_URL

