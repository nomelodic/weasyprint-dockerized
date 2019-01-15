FROM python:3.7-stretch

RUN echo "deb http://ftp.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/stretch-backports.list

RUN apt-get update -qq && apt-get -t stretch-backports install -qq -y \
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
    shared-mime-info \
    curl

RUN pip install --no-cache-dir --trusted-host pypi.python.org \
    'WeasyPrint==44'

RUN apt-get clean && \
    rm -fr /var/lib/apt/lists/* && \
    rm -fr /tmp/* && \
    rm -fr /var/tmp/*

ENTRYPOINT ["weasyprint"]
