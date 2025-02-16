BUCKET_NAME="file-recolector-timestamp-16-02-2026"
S3_PATH="s3://$BUCKET_NAME/outputs/"

while true; do
  for file in /shared-data/*.txt; do
    if [ -f "$file" ]; then
      aws s3 cp "$file" "$S3_PATH"
      rm -f "$file"  # Eliminar el archivo después de subirlo
    fi
  done
  sleep 3600  # Esperar 1 hora antes de revisar nuevamente
done