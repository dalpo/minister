require 'amministrativa/controller_responder'
require 'amministrativa/controller_resolver'
require 'amministrativa/controller_search'

module Amministrativa
  # Amministrativa abstract controller.
  # Every resource should inherited from this controller.
  class AmministrativaController < Amministrativa.parent_controller.constantize
    DEFAULT_MEMBER_ACTIONS = [:show, :edit, :update, :destroy].freeze

    include ControllerResponder
    include ControllerResolver
    include ControllerSearch

    before_action :set_resource, only: :member_actions

    def index
      @resources = search_collection.page(params[:page])
      yield @resources if block_given?
      respond_with(@resources)
    end

    def show
      yield @resource if block_given?
      respond_with(@resource)
    end

    def new
      @resource = resource_class.new
      yield @resource if block_given?
      respond_with(@resource)
    end

    def edit
      yield @resource if block_given?
      respond_with(@resource)
    end

    def create
      @resource = resource_class.new(resource_params)
      @resource.save
      yield @resource if block_given?
      respond_with(@resource)
    end

    def update
      @resource.update(resource_params)
      yield @resource if block_given?
      respond_with(@resource)
    end

    def destroy
      @resource.destroy
      yield @resource if block_given?
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
  end
end
