# frozen_string_literal: true
require 'rails/generators/named_base'

module Minister
  module Generators
    # Generate an minister initializer to override default configurations
    class ControllerGenerator < Rails::Generators::NamedBase
      READ_ONLY_ATTRIBUTES = %w(id created_at updated_at).freeze

      source_root File.expand_path('../templates', __FILE__)

      argument :manifest_name, type: 'string'.freeze, default: 'admin'.freeze

      desc 'Creates a minister esource controller'
      def create_resource_controller
        destination = Rails.root.join(
          "app/controllers/#{manifest_name}/#{plural_file_name}_controller.rb"
        )

        template('controller.rb.erb', destination)
      end

      private

      def klass
        @klass ||= Object.const_get(class_name)
      end

      def attributes
        klass.attribute_names # + klass.reflections.keys
      end

      def form_attributes
        attributes - READ_ONLY_ATTRIBUTES
      end

      def index_attributes
        %w(id) + form_attributes.first(3) + %w(created_at updated_at)
      end

      def enum_column?(attr)
        klass.respond_to?(:defined_enums) &&
          klass.defined_enums.keys.include?(attr)
      end

      def column_type_for_attribute(attr)
        datatype = enum_column?(attr) ? :enum : klass.column_types[attr].type
        datatype || :string
      end
    end
  end
end
