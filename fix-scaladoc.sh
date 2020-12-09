#!/bin/sh
find . -regex ".*/api/.*\.html\$" -type f -print0 | xargs -0 perl -i -0pe 's/(https:\/\/github.com\/slick\/slick\/blob\/[^"]*)\/Users\/[^"]*\/slick\/target\/scala-[^"]*\/src_managed\/main\/([^"]*)\.scala/\1\/scala\/\2.fm/'
