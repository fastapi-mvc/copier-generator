#! /usr/bin/env nix-shell
#! nix-shell shell.nix -i bash

if [ -n "$DEBUG" ]; then
	set -x
fi

set -o errexit
set -o nounset
set -o pipefail

copier -x template/** -x copier.yml -x *.py -x CHANGELOG.md \
  -d generator=generator \
  -d nix=true \
  -d license=MIT \
  -d repo_url=https://github.com/fastapi-mvc/copier-generator \
  -d version=0.1.0 \
  -d copyright_date=2022 \
  update ./.
