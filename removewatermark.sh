#!/usr/bin/env bash
watermark="$1"
shift 1
files=("$@")

for file in "${files[@]}"; do
  echo "Processing file $file"
  uncompressed_name="${file%.pdf}.uncompressed.pdf"
  unwatermarked_name="${file%.pdf}.unwatermarked.pdf"
  clean_name="${file%.pdf}.clean.pdf"

  pdftk "$file" output "$uncompressed_name" uncompress
  sed -e "s/$watermark/ /g" < "$uncompressed_name" > "$unwatermarked_name"
  pdftk "$unwatermarked_name" output "$clean_name" compress
  rm "$uncompressed_name" "$unwatermarked_name"
  echo "Done $file"
done

