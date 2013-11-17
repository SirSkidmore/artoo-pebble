require 'artoo/robot'

class PebbleRobot < Artoo::Robot
  connection :pebble, :adaptor => :pebble
  device :pebble, :driver => :pebble

  api :host => '127.0.0.1', :port => '8080'

  work do
    c = 100
    every(1.seconds) {
      c += 1
      str = "sales: #{c}"
      pebble.messages << str
      puts pebble.last_message
    }
  end
end

robots = []
robots << PebbleRobot.new(:name => "pebble")
PebbleRobot.work!(robots)
