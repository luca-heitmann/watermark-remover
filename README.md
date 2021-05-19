## Watermark remover
Removes watermarks from all PDF files in the current directory and subdirectories. Requires docker and bash. Tested only lightly on Linux (Fedora 33) and Windows (WSL2 Ubuntu 20.04).

Not guaranteed to produce valid PDFs.

### Usage
Prerequisite:
- Docker
- Bash

Usage:
`docker run -it --rm -v "$(pwd)":/mnt/work lucaheitmann/watermark-remover:latest "<WATERMARK_TEXT>" $(find . -type f -name "*.pdf" ! -name "*.clean.pdf")`

Note:
- This command will remove the watermarks of all PDF files in the current directory and in subdirectories.
- Replace <WATERMARK_TEXT> with the text of the watermark to remove.
- Make sure that the directory names does not contain spaces!

