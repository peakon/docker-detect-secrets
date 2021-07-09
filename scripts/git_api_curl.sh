#!/bin/sh


echo $TEST_VARIABLE | head -c 1

curl -X POST -H "Accept: application/json" -H "Authorization: Bearer $GITHUB_SECURITY_TOKEN" https://api.github.com/repos/$BUILDKITE_ORGANIZATION_SLUG/$BUILDKITE_PIPELINE_SLUG/commits/$BUILDKITE_COMMIT/comments -d '{"body":"Testing tagging @peakon/security in comment"}'


