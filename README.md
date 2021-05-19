## Watermark remover
Small script to remove watermarks from PDF files based on Docker. Only slightly tested on Linux (Fedora 33) and Windows (WSL2 Ubuntu 20.04).

No guarantee for the creation of valid PDFs.

### Usage
Requirements:
- Docker
- Bash (only for the following commands - other shells like PowerShell can also be used with a different syntax)

**Convert all files in the current and in all subdirectories:**

`find . -type f -name "*.pdf" ! -name "*.clean.pdf" -exec docker run -it --rm -v "$(pwd)":/mnt/work lucaheitmann/watermark-remover:latest "<WATERMARK_TEXT>" "{}" \+`

**Convert all files in the current directory:**

`find . -maxdepth 1 -type f -name "*.pdf" ! -name "*.clean.pdf" -exec docker run -it --rm -v "$(pwd)":/mnt/work lucaheitmann/watermark-remover:latest "<WATERMARK_TEXT>" "{}" \+`

**Convert one or more specifc files:**

`docker run -it --rm -v "$(pwd)":/mnt/work lucaheitmann/watermark-remover:latest "<WATERMARK_TEXT>" doc.pdf another-doc.pdf`

**Note:**
Replace <WATERMARK_TEXT> with the text of the watermark to remove!

### Development
- SCM: https://github.com/luca-heitmann/watermark-remover
- CI: https://hub.docker.com/repository/docker/lucaheitmann/watermark-remover

