require 'active_support/concern'
require 'minister/resource_resolver'

module Minister
  # Controller concern responsible to identify the current resource
  module ControllerResolver
    extend ActiveSupport::Concern

    included do
      delegate :resource_class, :resource_name, :namespace,
               to: :resource_resolver
    end

    protected

    def resource_name
      params[:resource_name]
    end

    def resource_resolver
      @resolver ||= ResourceResolver.new(resource_name)
    end
  end
end
