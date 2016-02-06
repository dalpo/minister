module Amministrativa
  class ResourceResolver
    attr_reader :resource_name

    # resource_name must be a `String` compatible with the rails `classify` method
    def initialize(resource_name)
      @resource_name = resource_name
    end

    def resource_class
      @resource_class ||= resource_name.classify
    end
  end
end
