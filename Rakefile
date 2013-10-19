# encoding: utf-8

require "rubygems"

begin
  require "bundler"
rescue LoadError => e
  warn e.message
  warn "Run `gem install bundler` to install Bundler."
  exit -1
end

begin
  Bundler.setup(:development)
rescue Bundler::BundlerError => e
  warn e.message
  warn "Run `bundle install` to install missing gems."
  exit e.status_code
end

require "rake"

require "rubygems/tasks"
Gem::Tasks.new

require "yard"
YARD::Rake::YardocTask.new
task :doc => :yard

require "rake/testtask"

task default: [:test]

Rake::TestTask.new(:test) do |t|
  t.libs << "lib"
  t.libs << "test"
  t.pattern = "test/**/*_test.rb"
  t.verbose = false
end
