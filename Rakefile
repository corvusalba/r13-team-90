require 'rubygems'
require 'bundler'

task :bundler do
  sh 'bundle install'
end

require 'sinatra'
require 'thin'

task :default => [:bundler] do
  conf = File.expand_path('config.ru', File.dirname(__FILE__))
  `thin -R #{conf} -p 80 start`
end

task :start do
  conf = File.expand_path('config.ru', File.dirname(__FILE__))
  `thin -e development -R #{conf} -p 8080 --debug start`
end
