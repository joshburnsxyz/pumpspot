# frozen_string_literal: true

require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Pumpspot
  class Application < Rails::Application
    config.load_defaults 7.0

    config.generators do |g|
      g.assets false
      g.helper false
      g.view_specs false
      g.scaffold_stylesheet false
      g.template_engine :haml
    end
  end
end
