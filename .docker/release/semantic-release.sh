#!/usr/bin/env bash
curl -X POST https://hooks.slack.com/services/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 -d '{"text": "All tests passed"}'
echo $DO_PUBLISH
