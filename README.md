# CV — Yaroslav Barov

Сайт: <https://tanchu.github.io/cv/> ([русская версия](https://tanchu.github.io/cv/ru/))
PDF: [English](yaroslav_barov.pdf) · [Русский](yaroslav_barov_ru.pdf)

## Как устроено

| Файл | Что это |
|---|---|
| `cv.md`, `cv.ru.md` | текст резюме; шапка (имя, заголовок, контакты) — в YAML front matter |
| `template.html` | HTML-шаблон pandoc, общий для PDF и сайта |
| `style.css` | оформление: `@page` и размеры для PDF, `@media screen` для сайта |
| `fonts/` | Commissioner и Oswald (статичные начертания из набора modamakers.rs, SIL OFL) |
| `build.sh` | PDF: pandoc (md → HTML) → WeasyPrint (HTML → PDF) |
| `build-site.sh` | сайт в `_site/`: английская версия в `/`, русская в `/ru/`, рядом PDF |

Даты места работы задаются атрибутом заголовка: `### Claven AI {dates="Oct 2026 – Present"}`.
В шрифтах Commissioner и Oswald нет стрелки «→» — не используйте её в тексте.

## Сборка

Локально (нужны `pandoc` и `weasyprint`: `brew install pandoc weasyprint`):

```sh
./build.sh                                  # cv.md → yaroslav_barov.pdf
./build.sh cv.ru.md yaroslav_barov_ru.pdf
./build-site.sh                             # сайт в _site/ (берёт уже собранные PDF)
python3 -m http.server -d _site             # посмотреть сайт на http://localhost:8000
```

В CI: push в `main` с изменением исходников запускает `.github/workflows/build-pdf.yml`. Он
собирает оба PDF и коммитит их обратно, затем собирает сайт и выкладывает его на GitHub Pages.
После своего push сделайте `git pull` — иначе следующий push упрётся в коммит бота с PDF.
