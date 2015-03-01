#!/bin/bash

mem=`dirname $0`

ls $mem/../web/templates/*.soy | \
  xargs java -jar $mem/closure-templates/SoyToJsSrcCompiler.jar \
    --shouldProvideRequireSoyNamespaces \
    --codeStyle concat \
    --cssHandlingScheme GOOG \
    --outputPathFormat '{INPUT_DIRECTORY}/{INPUT_FILE_NAME_NO_EXT}.soy.js' 

$mem/deps.sh
