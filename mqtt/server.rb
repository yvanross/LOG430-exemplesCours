 require 'sinatra'
 require 'thin'
require 'json'

puts "start sinatra web server"

 get '/test' do
  puts "test called"
 end

 get '/index' do
  puts "just called index" 
   "<h1>allo</h1>"
end