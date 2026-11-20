# CV — Yaroslav Barov

PDF: [English](yaroslav_barov.pdf) · [Русский](yaroslav_barov_ru.pdf)

## Как устроено

| Файл | Что это |
|---|---|
| `cv.md`, `cv.ru.md` | текст резюме; шапка (имя, заголовок, контакты) — в YAML front matter |
| `template.html` | HTML-шаблон pandoc |
| `style.css` | оформление PDF |
| `fonts/` | Commissioner и Oswald (статичные начертания из набора modamakers.rs, SIL OFL) |
| `build.sh` | сборка: pandoc (md → HTML) → WeasyPrint (HTML → PDF) |

Даты места работы задаются атрибутом заголовка: `### Claven AI {dates="Oct 2026 – Present"}`.

## Сборка

Локально (нужны `pandoc` и `weasyprint`: `brew install pandoc weasyprint`):

```sh
./build.sh                                  # cv.md → yaroslav_barov.pdf
./build.sh cv.ru.md yaroslav_barov_ru.pdf
```

В CI: push в `main` с изменением исходников запускает `.github/workflows/build-pdf.yml`, он
собирает оба PDF и коммитит их обратно. Шрифты в Commissioner/Oswald без стрелки «→» — не
используйте её в тексте.
