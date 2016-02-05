module Amministrativa
  module Fields
    class Base
      attr_reader :name, :model, :options

      def initialize(name, model, options = {})
        @name = name
        @model = model
        @options = options
      end

      def input_disabled?
        false
      end

      def input_readonly?
        false
      end

      def input_options
        {}
      end

      def additional_classes
        []
      end

      def input_class
        'field'.freeze
      end

      protected

        # Lookup translations based on object name, actual action and attribute.
        # Lookup priority as follows:
        #
        #   amministrativa.{namespace}.{model}.{action}.{attribute}
        #   amministrativa.{namespace}.{model}.{attribute}
        #   amministrativa.{namespace}.defaults.{attribute}
        #
        #  Namespace is used for :labels and :hints.
        #
        #  Example:
        #
        #    amministrativa:
        #      labels:
        #        user:
        #          email: 'E-mail para efetuar o sign in.'
        #
        #  Take a look at our locale example file.
        def translate_from_namespace(namespace, default = '')
          # do something
        end

        def i18n_scope
          'amministrativa'.freeze
        end
    end
  end
end
