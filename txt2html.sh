#!/bin/sh
html_file=${1%.*}.html
echo "<html><head><head><body>" > $html_file
sed -e "s/\\t\\(.*\\)/\\t\\1\\t\\1/" -e "s/^/<div><div>/" -e "s/\\t/<\\/div><div><a target=\\\"_blank\\\" href=\\\"https:\\/\\/lichess.org\\/editor\\//" -e "s/\\t/\\\"><img src=\\\"http:\\/\\/www.fen-to-image.com\\/image\\//" -e "s/$/\\\"\\/><\/a><\\/div><\\/div><br>/" $1 >> $html_file
echo "</body></html>" >> $html_file
