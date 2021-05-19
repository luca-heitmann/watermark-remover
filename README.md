## Watermark remover
Removes watermarks from all PDF files in the current directory and subdirectories. Requires docker and bash. Tested only lightly on Linux (Fedora 33) and Windows (WSL2 Ubuntu 20.04).

Not guaranteed to produce valid PDFs.

### Usage
Prerequisite:
- Docker
- Bash

Usage:
`docker run -it --rm -v "$(pwd)":/mnt/work lucaheitmann/watermark-remover:latest "<WATERMARK_TEXT>" $(find . -type f -name "*.pdf" ! -name "*.clean.pdf" | sed -e 's/^/"/g' -e 's/$/"/g')`

