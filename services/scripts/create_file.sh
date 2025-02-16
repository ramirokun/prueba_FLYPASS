#!/bin/bash

OUTPUT_DIR="/tmp/outputs"
mkdir -p "$OUTPUT_DIR"

while true; do
    TIMESTAMP=$(date +"%Y%m%d%H%M%S")
    PRIVATE_IP=$(hostname -I | awk '{print $1}')
    OUTPUT_FILE="$OUTPUT_DIR/$TIMESTAMP.txt"

    echo "Private IP: $PRIVATE_IP" > "$OUTPUT_FILE"
    echo "Saved IP to $OUTPUT_FILE"

    sleep 3600  