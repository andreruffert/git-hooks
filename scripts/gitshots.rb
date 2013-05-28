#!/usr/bin/env ruby

# post-commit

# Requires imagesnap from https://github.com/alexwilliamsca/imagesnap (brew install imagesnap)
# Create a .gitshots directory at the same level as the .git directory.
# To assemble the video use http://www.dayofthenewdan.com/projects/tlassemble

path=File.dirname(__FILE__)
file="#{path}/../../.gitshots/#{Time.now.to_i}.jpg"
puts "Taking capture into #{file}!"
system "imagesnap -q -w 3 #{file}"
exit 0