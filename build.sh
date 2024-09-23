#!/bin/bash

###
# Make a Docker container that builds and then serves the Jekyll site
###

set -ex
script_directory=$(realpath $(dirname $0))
(cd "${script_directory}"/docker && docker build -t longcon-jekyll-builder .)
docker run --network=host --rm \
	-v "${script_directory}":/site \
	longcon-jekyll-builder \
	jekyll serve --watch --livereload --source /site
