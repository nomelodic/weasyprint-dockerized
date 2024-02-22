FROM ubuntu:20.04

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
    libpangoft2-1.0-0 \
    libharfbuzz0b \
    libffi-dev \
    libjpeg-dev \
    libopenjp2-7-dev \
    shared-mime-info

RUN pip3 install --upgrade --no-cache-dir pip && \
    pip install --upgrade --no-cache-dir 'WeasyPrint==61'

RUN apt-get clean && \
    rm -fr /var/lib/apt/lists/* && \
    rm -fr /tmp/* && \
    rm -fr /var/tmp/*

RUN mkdir /tmp/workdir
WORKDIR /tmp/workdir

ENTRYPOINT ["weasyprint61"]
