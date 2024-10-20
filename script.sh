#!/bin/bash


hash_flag() {
    echo -n "$1" | sha256sum | awk '{print $1}'
}

CORRECT_HASH="50ea7be4eeb62777c05b06e21e9e5f6e8ce39442e7efbd17da8d57d5b18f5035"

submitted_flag=$(cat flag.txt)


submitted_hash=$(hash_flag "$submitted_flag")


if [ "$submitted_hash" == "$CORRECT_HASH" ]; then
    echo "Correct flag!"
    exit 0
else
    echo "Incorrect flag."
    exit 1
fi
