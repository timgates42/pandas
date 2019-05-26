#!/bin/bash

set -euxo pipefail

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ENV_FILE="${BASEDIR}/deps/azure-36-locale.yaml"
export ENV_FILE

"${BASEDIR}/setup_deps.sh"
"${BASEDIR}/setup_env.sh"

