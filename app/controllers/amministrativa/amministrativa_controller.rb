module Amministrativa
  class AmministrativaController < Amministrativa.parent_controller.constantize
    DEFAULT_MEMBER_ACTIONS = [:show, :edit, :update, :destroy].freeze

    include ControllerResolver
    include ControllerResponder

    before_action :set_resource, only: :member_actions

    helper_method :search_object

    def index
      @resources = search_collection.page(params[:page])
      respond_with(@resources)
    end

    def show
      respond_with(@resource)
    end

    def new
      @resource = resource_class.new
      respond_with(@resource)
    end

    def edit
    end

    def create
      @resource = resource_class.new(resource_params)
      @resource.save
      respond_with(@resource)
    end

    def update
      @resource.update(resource_params)
      respond_with(@resource)
    end

    def destroy
      @resource.destroy
      respond_with(@resource)
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

      def search_params
        (params[:q] || {}).tap do |q|
          q[:s] = 'id desc' if q[:s].blank?
        end
      end

      def search_object
        @search_object ||= collection.ransack(search_params)
      end

      def search_collection
        search_object.result(distinct: true)
      end
  end
end
