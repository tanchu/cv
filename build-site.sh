#!/bin/sh
# Сайт для GitHub Pages в _site/: английская версия в /, русская в /ru/, рядом PDF.
# PDF собираются заранее (build.sh); здесь только копируются.
set -eu
cd "$(dirname "$0")"

OUT=_site
rm -rf "$OUT"
mkdir -p "$OUT/ru"

page() { # page <source.md> <output.html> <root> <pdf> <alt_href> <alt_lang> <alt_label>
  pandoc "$1" --from markdown --to html5 --standalone --template template.html \
    -M root="$3" -M pdf="$4" -M alt_href="$5" -M alt_lang="$6" -M alt_label="$7" -o "$2"
}

page cv.md    "$OUT/index.html"    ""    yaroslav_barov.pdf       ru/  ru Русский
page cv.ru.md "$OUT/ru/index.html" ../   ../yaroslav_barov_ru.pdf ../  en English

cp -R style.css fonts yaroslav_barov.pdf yaroslav_barov_ru.pdf "$OUT/"
echo "built $OUT/"
