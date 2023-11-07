#!/usr/bin/env sh

# Script to initialize missing dependencies for vcpkg

if command -v yum >/dev/null 2>&1 ; then
  yum install -y zip
elif command -v apk >/dev/null 2>&1 ; then
  apk add zip
fi
