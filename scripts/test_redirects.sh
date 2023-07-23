#!/usr/bin/env bash

# I was messing around with shell scripts, but this could be rewritten in a more robust way. :)

echo 'checking redirects'

# Every domain has four ways that it can be accessed. This script tests all of them.
URLS=(
    http://example.com/
    http://www.example.com/
    https://example.com/
    https://www.example.com/
)

echo "code	destination				fetched"
echo "====	===========				======="
for url in "${URLS[@]}"; do
    echo "$(curl -o /dev/null -s -w "%{http_code}	" "$url")$(curl -L -o /dev/null -s -w %{url_effective} "$url")		$url"
done
