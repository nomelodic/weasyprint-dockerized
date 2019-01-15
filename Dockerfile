FROM python:3.7-stretch

RUN apt-get update -qq && apt-get install -qq -y \
    build-essential \
    python3-dev \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    python3-cffi \
    libcairo2 \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libgdk-pixbuf2.0-0 \
    libffi-dev \
    shared-mime-info

RUN pip install --trusted-host pypi.python.org 'WeasyPrint==44'

ENTRYPOINT ["/usr/local/bin/weasyprint"]
