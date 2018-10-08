require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

task default: :test

namespace :sample do
  require 'ascii_chart'

  desc 'Out put a random case'
  task :random do
    sample = Random.rand(3)
    Rake::Task["sample:#{sample + 1}"].invoke
  end

  desc 'Output the first case'
  task :'1' do
    puts AsciiChart.plot((0...90).map do |i|
      Math.cos(i * ((Math::PI * 4) / 90)).round(2) * 5
    end)
  end

  desc 'Output the second case'
  task :'2' do
    puts AsciiChart.plot((0...90).map do |i|
      Math.cos(i * ((Math::PI * 8) / 90)).round(2) * 10
    end)
  end

  desc 'Output the third case'
  task :'3' do
    puts AsciiChart.plot(Array.new(90) do
      Random.rand(10) * (-1)**Random.rand(2)
    end)
  end
end
