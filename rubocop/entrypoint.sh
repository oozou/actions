#!/bin/sh

set -eo pipefail

(cd $GITHUB_WORKSPACE && rubocop -c .rubocop.yml) && true