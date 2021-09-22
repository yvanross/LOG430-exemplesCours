 require 'mqtt'
require 'json'

puts "start a client to mqtt.cgmu.io"

client = MQTT::Client.connect('mqtt.cgmu.io',1883)
puts client.inspect

puts "subscribe to topics"
# client.subscribe('#')
client.subscribe( 
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/infra/gateway/',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/infra/gateway/0/ipc0/heartbeat',
	# 'worldcongress2017/pilot_resologi/connectedsignals/v2if' ,
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det0/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det0/det-00459-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det0/det-00721-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det0/det-00842-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det0/det-00865-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det0/det-18059-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00714-01/zone1/class2/gap-time',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00716-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00717-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00757-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00757-02/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00773-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00773-02/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00777-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00777-02/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00966-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00967-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00970-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00970-02/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-00974-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-01540-01/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-01540-02/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-01540-03/#',
	'worldcongress2017/pilot_resologi/odtf1/ca/qc/mtl/mobil/traf/detector/det1/det-07216-02/#',
)

puts "wait for next 250 messages"
index = 0
client.get do |topic,message|
	puts "#{index} #{topic}\n#{message}\n\n"
	index +=1
	break if index == 250
end

puts "readed last 250 messages"

client.disconnect()
puts "client.disconnected"
