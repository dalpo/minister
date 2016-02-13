module Minister
  # Class responsible to identify a Manifest by a given name
  class ManifestResolver
    def self.resolve(manifest_name)
      "#{manifest_name.classify}Manifest".constantize
    end

    attr_reader :manifest_name

    # manifest_name must be a `String` compatible with the rails
    # `classify` method
    def initialize(manifest_name)
      @manifest_name = manifest_name
    end

    def manifest_class
      @manifest_class ||= self.class.resolve(manifest_name)
    end
  end
end
