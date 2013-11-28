$: << File.dirname(__FILE__)

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs += ["lib", "."]
  t.test_files = FileList["test/test*.rb"]
end

task :default => :test