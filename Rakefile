require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
task 'db:migrate' do
Cucumber::Rake::Task.new(:features) do |t|
t.cucumber_opts = "-r features --tags @stable --format pretty" # Any valid command line option can go here.
end
Rake::Task[:features].invoke
end
