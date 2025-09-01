# ARCHIVED

For OpenAleph 5 and beyond, use Elasticsearch 9 with this image: https://github.com/openaleph/openaleph-search/pkgs/container/elasticsearch

# aleph-elasticsearch

This is a vendored version of ElasticSearch, suitable for use with the main OpenAleph application.
The principal additions are plugins for ICU, repository support for AWS and GCP, and the
synonym file used to expand queries for names in Aleph. That file is based on the adjacent
`synonames` project:

- https://github.com/alephdata/synonames
