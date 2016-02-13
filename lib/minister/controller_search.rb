require 'active_support/concern'

module Minister
  # Controller concern responsible to manage Ransack search logic
  module ControllerSearch
    extend ActiveSupport::Concern

    included do
      helper_method :search_object
    end

    protected

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
