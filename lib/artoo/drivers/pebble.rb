require 'artoo/drivers/driver'

module Artoo
  module Drivers
    # The pebble driver behaviors
    class Pebble < Driver

      attr_accessor :messages
      COMMANDS = [:message_queue, :last_message, :messages]

      # Start driver and any required connections
      def start_driver
        @messages = []
        begin
          every(interval) do
          end
          super
        rescue Exception => e
          Logger.error "Error starting Pebble driver!"
          Logger.error e.message
          Logger.error e.backtrace.inspect
        end
      end

      def message_queue
        @messages
      end

      def last_message
        @messages.last
      end

    end
  end
end
