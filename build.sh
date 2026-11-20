#!/bin/sh
# Сборка PDF из markdown: pandoc (md → HTML по template.html) → WeasyPrint (HTML + style.css → PDF).
# Запуск: ./build.sh [cv.md] [yaroslav_barov.pdf]
set -eu
cd "$(dirname "$0")"

SRC=${1:-cv.md}
OUT=${2:-yaroslav_barov.pdf}
HTML=${SRC%.md}.html

pandoc "$SRC" --from markdown --to html5 --standalone --template template.html --metadata pagetitle=CV -o "$HTML"
weasyprint --base-url . "$HTML" "$OUT"
rm -f "$HTML"
echo "built $OUT"
