require 'rails/generators/base'

module Minister
  module Generators
    # Generate an minister initializer to override default configurations
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      desc 'Creates an Minister initializer to your application.'
      def copy_initializer
        template 'minister.rb', 'config/initializers/minister.rb'
      end
    end
  end
end
