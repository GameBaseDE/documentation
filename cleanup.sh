#!/bin/bash
findstr=".*$1\.(aux|out|toc|log|xdy|(glg|glo|gls)(-abr)?)"
find . -regextype egrep -regex $findstr -delete
find . -name 'arara.log' -delete