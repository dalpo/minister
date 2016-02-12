module Amministrativa
  # Define the Amministrativa Rails Engine
  class Engine < ::Rails::Engine
    isolate_namespace Amministrativa

    initializer 'amministrativa routing' do
      require 'amministrativa/routing'

      ActionDispatch::Routing::Mapper.send(:include, Amministrativa::Routing)
    end
  end
end
