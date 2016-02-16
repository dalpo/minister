require 'minister/manifest_resolver'

module Minister
  # Convenience methods for Rails routing
  module Routing
    # Convenience function for mounting the different resources
    # for each minister manifest.
    def minister_for(manifest, options = {})
      # mount Minister::Engine => "/minister"

      namespace manifest, options do
        resources = minister_resources_for(manifest)
        root \
          resource_name: resources.first,
          controller: resources.first,
          action: :index

        resources.each do |name|
          # `resource_name` is required by minister controllers
          resources name, resource_name: name
        end
      end
    end

    protected

    def minister_manifest_for(manifest)
      ManifestResolver.resolve(manifest)
    end

    def minister_resources_for(manifest)
      minister_manifest_for(manifest).resources
    end
  end
end
