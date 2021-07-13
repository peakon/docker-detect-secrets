#!/bin/sh

curl -X POST -H "Accept: application/json" -H "Authorization: Bearer $GITHUB_SECURITY_ACCESS_TOKEN" https://api.github.com/repos/$BUILDKITE_ORGANIZATION_SLUG/$BUILDKITE_PIPELINE_SLUG/commits/$BUILDKITE_COMMIT/comments -d '{"body":"A new potential secret was discovered in this commit @peakon/security"}'
