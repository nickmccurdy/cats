require 'bundler/gem_tasks'
require 'rake/testtask'
require 'yard'

task default: :test

Rake::TestTask.new(:test) do |t|
  t.libs << 'spec'
  t.pattern = 'spec/**/*_spec.rb'
end

YARD::Rake::YardocTask.new
