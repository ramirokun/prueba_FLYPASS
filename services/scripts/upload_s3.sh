BUCKET_NAME="file-recolector-timestamp-16-02-2026"
S3_PATH="s3://$BUCKET_NAME/outputs/"

while true; do
  for file in /shared-data/*.txt; do
    if [ -f "$file" ]; then
      aws s3 cp "$file" "$S3_PATH"
      rm -f "$file"  
    fi
  done
  sleep 3600 
done