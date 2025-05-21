FROM elasticsearch:8.18.1
LABEL org.opencontainers.image.source = "https://github.com/openaleph/aleph-elasticsearch"

RUN bin/elasticsearch-plugin install --batch repository-s3 \
    && bin/elasticsearch-plugin install --batch analysis-icu

COPY --chown=elasticsearch synonames.txt /usr/share/elasticsearch/config/
