FROM squidfunk/mkdocs-material

ENV AWSCLI_VERSION='1.17.1'

RUN apk add build-base

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}
RUN pip install --quiet --no-cache-dir mkdocs-awesome-pages-plugin

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
