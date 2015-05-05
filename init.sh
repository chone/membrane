#!/bin/bash

mem=`dirname $0`

cd $mem
git submodule init 
git submodule update
