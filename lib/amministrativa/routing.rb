module Amministrativa
  # Convenience methods for Rails routing
  module Routing
    # Convenience function for mounting the different resources
    # for each amministrativa manifest.
    def amministrativa_for(manifest, options = {})
      # mount Amministrativa::Engine => "/amministrativa"

      namespace manifest, options do
        amministrativa_resources_for(manifest).each do |name|
          # `resource_name` is required by amministrativa controllers
          resources name, resource_name: name
        end
      end
    end

    protected

      def amministrativa_manifest_for(manifest)
        ManifestResolver.resolve(manifest)
      end

      def amministrativa_resources_for(manifest)
        amministrativa_manifest_for(manifest).resources
      end
  end
end
