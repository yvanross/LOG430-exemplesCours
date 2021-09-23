# Exemple MQTT Ville de Montréal

Exemple de code en Ruby pour récupérer les données de la ville de Montréal

Cet exercice a été testé avec ruby 2.5.0

# MQTT client

J'ai installé les gems suivants:
cd mqtt
gem install mqtt
gem install json
ruby mqtt_cli.rb

# MQTT serveur
voir doc [mosquitto](mosquitto.doc)
cd mqtt
gem install mosquitto 
mosquitto -c /usr/local/etc/mosquitto/mosquitto.conf
ruby mosquitto.rb


# configuration
Voici l'output de mon gem list au cas ca ne fonctionnerias pas et ou il vous manquerais un gem
actioncable (6.0.3.2)
actionmailbox (6.0.3.2)
actionmailer (6.0.3.2)
actionpack (6.0.3.2)
actiontext (6.0.3.2)
actionview (6.0.3.2)
activejob (6.0.3.2)
activemodel (6.0.3.2)
activerecord (6.0.3.2)
activestorage (6.0.3.2)
activesupport (6.0.3.2)
bigdecimal (default: 1.3.4)
builder (3.2.4)
bundler (default: 1.16.6)
bundler-unload (1.0.2)
cmath (default: 1.0.0)
concurrent-ruby (1.1.6)
crass (1.0.6)
csv (default: 1.0.0)
daemons (1.3.1)
date (default: 1.0.0)
dbm (default: 1.0.0)
did_you_mean (1.2.0)
erubi (1.9.0)
etc (default: 1.0.0)
eventmachine (1.2.7)
executable-hooks (1.6.0)
fcntl (default: 1.0.0)
fiddle (default: 1.0.0)
fileutils (default: 1.0.2)
gdbm (default: 2.0.0)
gem-wrappers (1.4.0)
globalid (0.4.2)
i18n (1.8.3)
io-console (default: 0.4.6)
ipaddr (default: 1.2.0)
json (default: 2.1.0)
loofah (2.6.0)
mail (2.7.1)
marcel (0.3.3)
method_source (1.0.0)
mimemagic (0.3.5)
mini_mime (1.0.2)
mini_portile2 (2.4.0)
minitest (5.10.3)
mqtt (0.5.0)
mustermann (1.0.3)
net-telnet (0.1.1)
nio4r (2.5.2)
nokogiri (1.10.10)
openssl (default: 2.1.0)
power_assert (1.1.1)
psych (default: 3.0.2)
rack (2.2.3, 2.0.7)
rack-protection (2.0.5)
rack-test (1.1.0)
rails (6.0.3.2)
rails-dom-testing (2.0.3)
rails-html-sanitizer (1.3.0)
railties (6.0.3.2)
rake (12.3.0)
rdoc (default: 6.0.1)
rubygems-bundler (1.4.5)
rvm (1.11.3.9)
scanf (default: 1.0.0)
sdbm (default: 1.0.0)
sinatra (2.0.5)
sprockets (4.0.2)
sprockets-rails (3.2.1)
stringio (default: 0.0.1)
strscan (default: 1.0.0)
test-unit (3.2.7)
thin (1.7.2)
thor (1.0.1)
thread_safe (0.3.6)
tilt (2.0.9)
tzinfo (1.2.7)
webrick (default: 1.4.2)
websocket-driver (0.7.2)
websocket-extensions (0.1.5)
xmlrpc (0.3.0)
zeitwerk (2.3.1)
zlib (default: 1.0.0)