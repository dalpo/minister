require 'rails/generators/base'

module Amministrativa
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates an Amministrativa initializer to your application."
      def copy_initializer
        template "amministrativa.rb", "config/initializers/amministrativa.rb"
      end
    end
  end
end
