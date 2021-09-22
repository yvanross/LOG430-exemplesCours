 require 'mqtt'
require 'json'

puts "start a client to mqtt.cgmu.io"

client = MQTT::Client.connect('mqtt.cgmu.io',1883)
puts client.inspect

puts "subscribe to topics"
client.subscribe('#')

puts "infinite record messages"
index = 0
client.get do |topic,message|
  puts "#{index} #{Time.now} #{topic} #{message}\n"
  index = index + 1
  File.open("log430-recorded-mqtt.txt", "a"){|f| f.write("#{Time.now};#{topic};#{message}\n")}
end
