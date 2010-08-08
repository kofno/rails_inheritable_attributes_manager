require 'rake/testtask'

task :default => :test

Rake::TestTask.new do |t|
  t.libs = %w(tests lib)
  t.pattern = 'tests/**/*_test.rb'
end
