#!/bin/bash
findstr=".*$1\.(aux|out|toc|log)"
find . -regextype egrep -regex $findstr -delete
find . -name 'arara.log' -delete