require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.test_files = FileList['test/specs/*.rb']
  t.verbose = true
end

task default: :test
