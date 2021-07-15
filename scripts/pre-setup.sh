#!/bin/sh

cmd="$@"

detect-secrets scan --disable-plugin ArtifactoryDetector --disable-plugin CloudantDetector --disable-plugin IbmCloudIamDetector --disable-plugin IbmCosHmacDetector --disable-plugin SoftlayerDetector --disable-plugin StripeDetector --disable-plugin TwilioKeyDetector

detect-secrets scan --exclude-files '.*\.*spec.js$' --exclude-files '.*fixtures.*' --exclude-files '.*\/translations\/locales\/.*.json$'

exec $cmd
