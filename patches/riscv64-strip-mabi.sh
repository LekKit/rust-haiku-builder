#!/bin/bash

filtered_args=()
FILTERED_ARG="-mabi=lp64"

for arg in "$@"; do
    if [[ "$arg" != "$FILTERED_ARG" ]]; then
        filtered_args+=("$arg")
    fi
done

$0-orig ${filtered_args[@]}
