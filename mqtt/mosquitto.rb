 require 'sinatra'
 require 'mqtt'
 require 'thin'
require 'json'

puts "This is a mosquitto client"
puts "be sure to install https://mosquitto.org/"
puts "start it with command line"
puts "mosquitto -c /usr/local/etc/mosquitto/mosquitto.conf"

rand_start = 1.0/60
rand_end = 5.0/60

threads = []
threads << Thread.new { 
  client = MQTT::Client.connect('localhost',1883)
  start = Time.now.to_f
  topic_index = 0
  while true
    delay = rand(rand_start..rand_end)
    sleep delay
    actual_time  =  Time.now.to_f - start
    puts "publish topic: allomoncoco/#{0} => test #{topic_index} #{actual_time} #{delay}" if topic_index < 30
    client.publish("allomoncoco/#{0}", "test #{topic_index} #{actual_time} #{delay}", retain=false)
    topic_index += 1
  end
}

sleep 2
puts "subscribe"
client = MQTT::Client.connect('localhost',1883)
client.subscribe('allomoncoco/#')
index = 0
client.get do |topic,message|
  puts "#{index} notified #{topic} => #{message}"
  index +=1
  break if index == 5000
end

puts "END OF LOOP"

client.disconnect()
puts "client.disconnect"

puts "stopping threads"
threads.each{|thread| thread.exit}

puts "EVERYTHING STOPPED "

