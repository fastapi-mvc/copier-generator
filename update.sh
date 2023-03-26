#!/usr/bin/env bash

if [ -n "$DEBUG" ]; then
	set -x
fi

set -o errexit
set -o nounset
set -o pipefail

copier -x template/** -x copier.yml -x *.py -x CHANGELOG.md \
  "$@" \
  -d generator=generator \
  -d nix=True \
  -d license=MIT \
  -d repo_url=https://github.com/fastapi-mvc/copier-generator \
  -d copyright_date=2022 \
  -d github_actions=True \
  -a .generator.yml \
  update ./.
