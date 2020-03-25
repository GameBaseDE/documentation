#!/bin/bash

OUTPUT="index.html"
echo "<html><head><title>Documentation</title><link rel='stylesheet' href='style.css'></head><body>" > $OUTPUT

echo "<ul>" >> $OUTPUT
for filepath in $(find . -maxdepth 3 -mindepth 1| sort); do
  echo "  <li><a href=\"$filepath/\">$filepath</a></li>" >> $OUTPUT
done
echo "</ul></body></html>" >> $OUTPUT
