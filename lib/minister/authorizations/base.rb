# require 'active_support/concern'

module Minister
  module Authorizations
    # Minister base authorization adapter
    class Base
      def authorize(resource, action)
      end

      def scope(resources)
        resources
      end

      # module ControllerConcern
      #   extend ActiveSupport::Concern
      #
      #   included do
      #     # ...
      #   end
      # end
    end
  end
end
