require "bundler/gem_tasks"

desc 'Load gem inside irb console'
task :console do
  require 'irb'
  require 'irb/completion'
  require File.join(__FILE__, '../lib/r-toggl')
  ARGV.clear
  IRB.start
end

