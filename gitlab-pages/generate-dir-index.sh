#!/bin/bash

OUTPUT="index.html"
echo "<html><head><title>Documentation</title><link rel='stylesheet' href='style.css'></head><body>" > $OUTPUT

echo "<div class='box'><ul class='directory-list'>" >> $OUTPUT

for filepath in $(find . -maxdepth 1 -mindepth 1 -type f| sort); do
  echo "  <li><a href=\"$filepath/\">$filepath</a></li>" >> $OUTPUT
done

for filepath in $(find . -maxdepth 1 -mindepth 1 -type d| sort); do
  path=`basename "$filepath"`
  echo " <li class='folder'>$path<ul>" >> $OUTPUT

  for i in $(find "$filepath" -maxdepth 1 -mindepth 1 -type f| sort); do
    file=`basename "$i"`
    echo "  <li><a href=\"/$path/$file\">$file</a></li>" >> $OUTPUT
  done

  echo "</ul></li>" >> $OUTPUT
done
echo "</ul></body></html>" >> $OUTPUT