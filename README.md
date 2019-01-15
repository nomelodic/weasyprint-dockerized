# WeasyPrintDocker

WeasyPrint Dockerized

## Build

```bash
docker build -t weasyprint https://github.com/cakebake/weasyprint-dockerized.git
```

## Run

```bash
docker run -it --rm -v $PWD/output:/tmp/output weasyprint \
  http://weasyprint.org print.pdf
```
