FROM jakubzapletal/ebsphp2:7.0

RUN \
    apt-get update \
    && apt-get install -y --force-yes --no-install-recommends \
        nodejs \
        npm \
    && rm -rf /var/lib/apt/lists/* \
    && ln -s /usr/bin/nodejs /usr/bin/node \
    && npm install -g dredd@1.0.11 \
