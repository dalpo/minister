require 'active_support/concern'

module Minister
  # Controller concern resposible to initialiaze the configured responder
  module ControllerCouncillor
    extend ActiveSupport::Concern

    included do
      helper_method :councillor
    end

    def councillor
    end
  end
end
