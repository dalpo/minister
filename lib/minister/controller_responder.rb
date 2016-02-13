require 'active_support/concern'

module Minister
  # Controller concern resposible to initialiaze the configured responder
  module ControllerResponder
    extend ActiveSupport::Concern

    included do
      self.responder = responder_class
      respond_to responder_formats
    end

    class_methods do
      def responder_class
        Minister.responder_class.to_s.constantize
      end

      def responder_formats
        Minister.responder_formats
      end
    end
  end
end