WeasyPrintDocker
================

WeasyPrint Dockerized

Build
-----

```bash
docker build -t weasyprint https://github.com/cakebake/weasyprint-dockerized.git
```

Run
---

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
