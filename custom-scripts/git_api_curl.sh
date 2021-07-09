#!/bin/sh
if [[ -z "${BUILDKITE_ORGANIZATION_SLUG}" ]]; then
    echo "BUILDKITE ORG SLUG SET"
else
    echo "${BUILDKITE_ORGANIZATION_SLUG}"
fi

curl -X POST -H "Accept: application/json" -H "Authorization: Bearer ${GITHUB_SECURITY_TOKEN}" https://api.github.com/repos/${BUILDKITE_ORGANIZATION_SLUG}/${BUILDKITE_PIPELINE_SLUG}/commits/${BUILDKITE_COMMIT}/comments -d '{"body":"Testing tagging @peakon/security in comment"}'

