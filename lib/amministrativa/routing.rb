module Amministrativa
  # Convenience methods for Rails routing
  module Routing
    # convenience function for mounting the amministrativa resourses
    def mount_amministrativa(namespace_name = :admin, namespace_options = {})
      # mount Amministrativa::Engine => "/amministrativa"

      namespace namespace_name, namespace_options do
        # mount resourses
      end
    end
  end
