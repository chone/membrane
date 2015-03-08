#!/bin/bash

mem=`dirname $0`

find $mem/../ | grep -E ".*\.soy$" | \
  xargs java -jar $mem/closure-templates/SoyToJsSrcCompiler.jar \
    --shouldProvideRequireSoyNamespaces \
    --codeStyle concat \
    --cssHandlingScheme GOOG \
    --outputPathFormat '{INPUT_DIRECTORY}/{INPUT_FILE_NAME_NO_EXT}.soy.js' 

$mem/deps.sh
