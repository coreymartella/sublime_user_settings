#!/usr/bin/env ruby
require 'optparse'
IO.popen('pbcopy', 'r+') { |clipboard| clipboard.print "HEY NOW"  }
# options = {:open => false}
# OptionParser.new do |opts|
#   opts.banner = "Usage: git-fileurl [options]"

#   opts.on("-f FILE", "--file=FILE", "file to link to") do |v|
#     options[:file] = v
#   end
#   opts.on("-l LINE", "--line=LINE", "line number to link to") do |v|
#     options[:line] = v
#   end
#   opts.on("-o", "--[no-]open", "Open the url in a browser") do |v|
#     options[:open] = v
#   end
#   opts.on_tail("-h",nil,"Show this message") do
#     puts opts
#     exit
#   end
# end.parse!
# raise OptionParser::MissingArgument.new(:file) if options[:file].nil?
# raise "Unknown file #{options[:file]}" unless File.exists?(options[:file])

# base_url = `git config --get remote.origin.url`.strip.gsub(/\.git\Z/,'').gsub(":",'/').gsub(/\Agit\@/,"https://")
# branch = `git symbolic-ref --short -q HEAD`.strip
# url = "#{base_url}/blob/#{branch}/#{options[:file]}/#{options[:commit]}"
# url << "#L#{options[:line]}" if options[:line]
# IO.popen('pbcopy', 'r+') { |clipboard| clipboard.puts url }
# puts "Commit URL copied to keyboard: #{url}"
# `open "#{url}"` if options[:open]