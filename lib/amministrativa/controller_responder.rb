require 'active_support/concern'

module Amministrativa
  module ControllerResponder
    extend ActiveSupport::Concern

    included do
      self.responder = responder_class
      respond_to responder_formats
    end

    class_methods do
      def responder_class
        Amministrativa.responder_class.to_s.constantize
      end

      def responder_formats
        Amministrativa.responder_formats
      end
    end
  end
end
