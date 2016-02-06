require 'active_support/concern'
require 'amministrativa/resource_resolver'

module Amministrativa
  module ControllerResolver
    extend ActiveSupport::Concern

    included do
      delegate :resource_class, :resource_name, :namespace, to: :resource_resolver
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
