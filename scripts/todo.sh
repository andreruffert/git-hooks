#!/bin/sh

# pre-commit

# The script will search through the project for all comments with TODO, @todo and FIXME then overwrite the file each time you do a git commit.
# list all the TODO from all the files except from all files starting with a dot then put them into TODO.md file.
# The TODO.md will contain all your todos and shows you which file and line:
# ./test.js:21: // TODO test the method
# ./test.js:105: // TODO create a list
grep -r -i -n -E "(@todo|TODO|FIXME)(.*?)$" . --colour --exclude=TODO.md --exclude=".*"  > TODO.md
git add TODO.md