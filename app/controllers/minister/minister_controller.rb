require 'minister/controller_responder'
require 'minister/controller_resolver'
require 'minister/controller_search'

module Minister
  # Minister abstract controller class.
  # Every resource should inherited from this controller.
  class MinisterController < Minister.parent_controller.constantize
    # Councillor abstract class
    class Councillor
      attr_reader :current_user, :resource

      def self.index_attributes_limit
        4.freeze
      end

      def self.read_only_attributes
        %w(id created_at updated_at).freeze
      end

      def initialize(current_user, resource)
        @current_user = current_user
        @resource = resource
      end

      # All available attributes
      def attributes
        @attributes ||= if defined?(ATTRIBUTES_MAPPING)
          ATTRIBUTES_MAPPING.keys.freeze
        else
          []
        end
      end

      def show_attributes
        attributes
      end

      def index_attributes
        show_attributes.first(self.class.index_attributes_limit)
      end

      def form_attributes
        attributes - self.class.read_only_attributes
      end

      def create_attributes
        form_attributes
      end

      def update_attributes
        form_attributes
      end
    end

    DEFAULT_MEMBER_ACTIONS = [:show, :edit, :update, :destroy].freeze

    include ControllerCouncillor
    include ControllerResponder
    include ControllerResolver
    include ControllerSearch

    before_action :set_resource, only: :member_actions

    def index
      @resources = search_collection.page(params[:page])
      yield @resources if block_given?
      # perform_with @resources
      respond_with @resources
    end

    def show
      yield @resource if block_given?
      respond_with @resource
    end

    def new
      @resource = resource_class.new
      yield @resource if block_given?
      respond_with @resource
    end

    def edit
      yield @resource if block_given?
      respond_with @resource
    end

    def create
      @resource = resource_class.new(resource_params)
      @resource.save
      yield @resource if block_given?
      respond_with @resource
    end

    def update
      @resource.update(resource_params)
      yield @resource if block_given?
      respond_with @resource
    end

    def destroy
      @resource.destroy
      yield @resource if block_given?
      respond_with @resource
    end

    protected

    def member_actions
      DEFAULT_MEMBER_ACTIONS
    end

    def collection
      resource_class
    end

    def set_resource
      @resource = collection.find(params[:id])
    end

    def resource_params
      {}
    end
  end
end
