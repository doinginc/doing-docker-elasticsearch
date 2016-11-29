# Doing Docker Elasticsearch image

Simple Elasticsearch 2.x image with the [ICU Analysis plugin](https://www.elastic.co/guide/en/elasticsearch/plugins/2.4/analysis-icu.html) installed:

https://hub.docker.com/r/doing/elasticsearch/

## Installation

### CircleCI

Builds, testing, and pushing to [Docker Hub](https://hub.docker.com/) are automated via CircleCI. When a tag is created in this repository, CircleCI listens, build a new image and pushes it to Docker Hub using the tag name as the version number. The image can then be referenced elsewhere by `doing/elasticsearch:(version)`.

To be able to do this, CircleCI needs to be able to authenticate with Docker Hub, so the username, and password of a Docker Hub user with access to the [Doing Docker Hub organization](https://hub.docker.com/u/doing/dashboard/) shoule be set as environment variables: `DOCKER_USER`, and `DOCKER_PASS`.

To creating a new release of the image, just create a new tag with a [semver](http://semver.org/) version prefixed with a `v`, e.g. `v3.1.0`.
