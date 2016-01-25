#!/usr/bin/env ruby


# This script will search for the  directory which can be given as full name or as partial name.
# Additionally, several name partials can be given to specify a directory structure

unless ARGV[0]
  puts 'You have to specify a directory name or a part of it.'
  exit 0
end


search_string = ENV['HOME'].dup

ARGV.join(' ').split('/').map(&:split).each do |partial|
  search_string << "/**/#{partial.reduce(''){ |dir, part| dir += "*#{part}"}}*"
end

new_dir = Dir[search_string].find{ |d| Dir.exist?(d) }

puts(new_dir ? new_dir : '.')
