#!/bin/bash

echo "🚀 Migrating [Project Name] files using mappings.txt..."
echo "---------------------------------------------"

MAPPING_FILE="mappings.txt"

if [[ ! -f $MAPPING_FILE ]]; then
  echo "❌ Mapping file not found: $MAPPING_FILE"
  exit 1
fi

while IFS='|' read -r src dest; do
  if [[ -f "$src" ]]; then
    mkdir -p "$(dirname "$dest")"
    mv "$src" "$dest" 
    echo "✅ Moved: $src → $dest"
  else
    echo "❌ Missing: $src"
  fi
done < "$MAPPING_FILE"

echo "---------------------------------------------"
echo "🎉 Migration completed."
