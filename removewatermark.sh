#!/usr/bin/env bash
watermark="$1"
shift 1
files="$@"

for f in $files; do
	uncompressed_name="${f%.pdf}.uncompressed.pdf"
	unwatermarked_name="${f%.pdf}.unwatermarked.pdf"
	clean_name="${f%.pdf}.clean.pdf"

	pdftk "$f" output "$uncompressed_name" uncompress
	sed -e "s/$watermark/ /g" < "$uncompressed_name" > "$unwatermarked_name"
	pdftk "$unwatermarked_name" output "$clean_name" compress
	rm "$uncompressed_name" "$unwatermarked_name"
done
