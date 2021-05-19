Prerequisite: Docker

Installation:
1. Clone this repository
2. Run ./build.sh

Usage: docker run -it --rm -v "$(pwd)":/mnt/work watermark-remover "<WATERMARK_TEXT>" $(find . -type f -name "*.pdf" ! -name "*.clean.pdf")
