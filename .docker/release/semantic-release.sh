#!/usr/bin/env bash
if test $DO_PUBLISH; then
    echo "{}" > package.json
    npm i -g npm
    npm install semantic-release last-release-git
    ./node_modules/.bin/semantic-release pre --get-last-release="last-release-git" && ./node_modules/.bin/semantic-release post --get-last-release="last-release-git"
    curl -X POST https://hooks.slack.com/services/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 -d '{"text": "All tests passed"}'
fi
