#!/bin/bash

mem=`dirname $0`

$mem/closure-library/closure/bin/build/depswriter.py \
  --root_with_prefix="$mem/closure-templates ../../../closure-templates" \
  --root_with_prefix="$mem/../web ../../../../web" \
  > $mem/../web/deps.js


