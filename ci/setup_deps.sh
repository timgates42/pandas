#!/bin/bash

set -euxo pipefail

apt-get update
apt-get install -y \
  wget
