require 'active_support/concern'
require 'minister/resource_resolver'

module Minister
  # Controller concern responsible to authorize the current resource
  module ControllerAuthorizer
    extend ActiveSupport::Concern

    included do
      # eval included Authorization adapter module
    end

    protected

    # def authorization_current_user
    #   current_user
    # end
  end
end
