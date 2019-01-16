[WeasyPrint](https://github.com/Kozea/WeasyPrint) Dockerized
============================================================

[WeasyPrint](https://github.com/Kozea/WeasyPrint) is a visual rendering engine for HTML and CSS that can export to PDF. It aims to support web standards for printing.

Features
--------

-	**[URLs](https://weasyprint.readthedocs.io/en/latest/features.html#urls):** HTTP, FTP, data URIs, HTTP redirects
-	**[HTML](https://weasyprint.readthedocs.io/en/latest/features.html#html):** HTML5 (Some elements need special treatment)
-	**[PDF](https://weasyprint.readthedocs.io/en/latest/features.html#pdf):** Text, raster, vector graphics, hyperlinks, bookmarks, attachments
-	**[Fonts](https://weasyprint.readthedocs.io/en/latest/features.html#fonts):** FreeType installed in `~/.local/share/fonts`, `@font-face` Web Fonts
-	**[CSS](https://weasyprint.readthedocs.io/en/latest/features.html#css):** Level 2.1, Level 3, Text Module Level 3 / 4, Fonts Module Level 3, Paged Media Module Level 3, Generated Content for Paged Media Module, Color Module Level 3, Transforms Module Level 1, Backgrounds and Borders Module Level 3, Image Values and Replaced Content Module Level 3 / 4, Basic User Interface Module Level 3, Values and Units Module Level 3, Multi-column Layout Module

Installing
----------

### Build

```bash
docker build -t weasyprint https://github.com/cakebake/weasyprint-dockerized.git
```

### Run

List console API

```bash
docker run -it --rm -v $PWD/workdir:/tmp/workdir weasyprint --help
```

#### Example

```bash
docker run -it --rm -v $PWD/workdir:/tmp/workdir weasyprint \
  http://weasyprint.org print.pdf
```

> Output is generated in `./workdir/print.pdf`

or

```bash
docker run -it --rm -v $PWD/workdir:/tmp/workdir weasyprint \
  input.html print.pdf
```

> Put input file in `./workdir`. Output is generated in `./workdir/print.pdf`
