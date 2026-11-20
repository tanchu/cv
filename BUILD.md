# How this CV is built

## How it works

| File | What it is |
|---|---|
| `cv.md`, `cv.ru.md` | CV text; the header (name, headline, contacts) lives in YAML front matter |
| `template.html` | pandoc HTML template, shared by the PDF and the website |
| `style.css` | styles: `@page` and sizes for the PDF, `@media screen` for the website |
| `fonts/` | Commissioner and Oswald (static instances from the modamakers.rs font set, SIL OFL) |
| `build.sh` | PDF: pandoc (md → HTML) → WeasyPrint (HTML → PDF) |
| `build-site.sh` | website in `_site/`: English at `/`, Russian at `/ru/`, PDFs alongside |

Job dates are set with a heading attribute: `### Claven AI {dates="Oct 2026 – Present"}`.
Commissioner and Oswald have no "→" arrow glyph, so don't use it in the text.

## Build

Locally (requires `pandoc` and `weasyprint`: `brew install pandoc weasyprint`):

```sh
./build.sh                                  # cv.md → yaroslav_barov.pdf
./build.sh cv.ru.md yaroslav_barov_ru.pdf
./build-site.sh                             # website in _site/ (uses the PDFs built above)
python3 -m http.server -d _site             # preview at http://localhost:8000
```

In CI: a push to `main` that changes the sources runs `.github/workflows/build-pdf.yml`. It
builds both PDFs and commits them back, then builds the website and deploys it to GitHub Pages.
Run `git pull` after your push, otherwise the next push will be rejected because of the bot's
PDF commit.
