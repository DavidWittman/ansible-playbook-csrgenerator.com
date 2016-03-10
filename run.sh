#!/usr/bin/env bash

PLAYBOOK="csrgenerator.yml"
TARGET_HOST="$1"
shift

OPTS=""
if [[ "$TARGET_HOST" = "localhost" ]] || [[ "$TARGET_HOST" = "127.0.0.1" ]]; then
    OPTS="-c local"
fi

ansible-galaxy install -r requirements.yml -p roles/
ansible-playbook -i "$TARGET_HOST", "$PLAYBOOK" $OPTS "$@"
