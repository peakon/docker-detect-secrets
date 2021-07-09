#!/bin/sh
if [[ -z "${GITHUB_SECURITY_TOKEN}" ]]; then
    echo "Github Sec Token Not Set"
else
    echo "SEC Token SET"
    curl -X POST -H "Accept: application/json" -H "Authorization: Bearer ${GITHUB_SECURITY_TOKEN}" https://api.github.com/repos/${BUILDKITE_ORGANIZATION_SLUG}/${BUILDKITE_PIPELINE_SLUG}/commits/${BUILDKITE_COMMIT}/comments -d '{"body":"Testing tagging @peakon/security in comment"}'
fi

