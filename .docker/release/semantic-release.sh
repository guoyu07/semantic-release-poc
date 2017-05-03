#!/usr/bin/env bash
if test $DO_PUBLISH; then
    curl -X POST https://hooks.slack.com/services/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 -d '{"text": "All tests passed"}'
fi
