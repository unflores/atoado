require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Listy
  class Application < Rails::Application
    config.generators do |g|
      g.template_engine :haml

      # you can also specify a different test framework or ORM here
      # g.test_framework  :rspec
      # g.orm             :mongoid
    end

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]
  end
end
