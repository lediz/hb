#!/bin/sh

# ---------------------------------------------------------------
# Copyright 2017 Viktor Szakats (vszakats.net/harbour)
# See LICENSE.txt for licensing terms.
# ---------------------------------------------------------------

# Install matching Harbour sources into an existing binary installation.
# Requires: curl, tar

cd "$(dirname "$0")" || exit

curl -fsS -L --proto-redir =https \
   '_HB_URL_SRC_TGZ_' \
| tar --strip-components 1 -x

echo "Sources downloaded and merged into the Harbour directory:"
echo "   '$(pwd)'"
echo 'You may now build/rebuild Harbour components as you like.'
echo "Steps described in section 'How to Do a Partial Build' of 'README.md'."