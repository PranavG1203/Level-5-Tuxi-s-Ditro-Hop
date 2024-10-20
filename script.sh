#!/bin/bash


hash_flag() {
    echo -n "$1" | sha256sum | awk '{print $1}'
}

CORRECT_HASH="df85ee28ffdd63abfaa5118f5df3868905a01f65201d108f2ffe0c51da7ef572"

submitted_flag=$(cat flag.txt)


submitted_hash=$(hash_flag "$submitted_flag")


if [ "$submitted_hash" == "$CORRECT_HASH" ]; then
    echo "Correct flag!"
    exit 0
else
    echo "Incorrect flag."
    exit 1
fi
