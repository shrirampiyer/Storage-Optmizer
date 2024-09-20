#!/bin/bash

TARGET_PATH="/path/to/your/directory"

CURRENT_DATE=$(date +%s)

ONE_MONTH_AGO=$(date -v-1m +%s)
SIX_MONTHS_AGO=$(date -v-6m +%s)

for file in "$TARGET_PATH"/*; do
    if [ -f "$file" ]; then
        FILE_MOD_DATE=$(stat -f %m "$file")

        if [ "$FILE_MOD_DATE" -le "$SIX_MONTHS_AGO" ]; then
            echo "Deleting: $file (older than 6 months)"
            rm "$file"
        elif [ "$FILE_MOD_DATE" -le "$ONE_MONTH_AGO" ]; then
            echo "Compressing: $file (older than 1 month but less than 6 months)"
            gzip "$file"
        else
            echo "File is less than 1 month old: $file (no action needed)"
        fi
    fi
done

echo "File archival process completed."
