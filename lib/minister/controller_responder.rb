require 'active_support/concern'

module Minister
  # Controller concern resposible to initialiaze the configured responder
  module ControllerResponder
    extend ActiveSupport::Concern

    included do
      self.responder = Minister.responder_class.to_s.constantize
      respond_to(*Minister.responder_formats)
    end
  end
end
