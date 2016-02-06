require 'rails'
require 'amministrativa/engine'

module Amministrativa
  # The parent controller all Amministrativa controllers inherits from.
  # Defaults to ApplicationController. This should be set early
  # in the initialization process and should be set to a string.
  mattr_accessor :parent_controller
  @@parent_controller = 'ActionController::Base'.freeze

  mattr_accessor :responder_class
  @@responder_class = 'Amministrativa::Responder'.freeze

  mattr_accessor :responder_formats
  @@responder_formats = [:html, :json].freeze

  # Default way to setup Devise. Run rails generate devise_install to create
  # a fresh initializer with all configuration values.
  def self.setup
    yield self
  end
end
