module Minister
  module Fields
    # Minister abstract class with the field render logic
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
        'field'
      end

      protected

      # Lookup translations based on object name, actual action and attribute.
      # Lookup priority as follows:
      #
      #   minister.{namespace}.{model}.{action}.{attribute}
      #   minister.{namespace}.{model}.{attribute}
      #   minister.{namespace}.defaults.{attribute}
      #
      #  Namespace is used for :labels and :hints.
      #
      #  Example:
      #
      #    minister:
      #      labels:
      #        user:
      #          email: 'E-mail para efetuar o sign in.'
      #
      #  Take a look at our locale example file.
      def translate_from_namespace(namespace, default = '')
        # do something
      end

      def i18n_scope
        'minister'
      end
    end
  end
end
