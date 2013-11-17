require 'artoo/adaptors/adaptor'

module Artoo
  module Adaptors
    # Connect to a pebble device
    # @see device documentation for more information
    class Pebble < Adaptor
      # Creates a connection with device
      # @return [Boolean]
      def connect
        super
      end

      # Closes connection with device
      # @return [Boolean]
      def disconnect
        super
      end
    end
  end
end
