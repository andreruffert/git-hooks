#!/bin/sh

# Requires imagesnap from https://github.com/alexwilliamsca/imagesnap (brew install imagesnap)
# Create a .gitshots directory at the same level as the .git directory.
# To assemble the video use http://www.dayofthenewdan.com/projects/tlassemble

# This has the advantage to gitshots.rb of being run in the background,
# so you don't have to wait for the camera to finish after each commit.

FILE=$(dirname $0)/../../.gitshots/$(date "+%s").jpg
echo "Taking capture into" $FILE
imagesnap -q -w 3 $FILE