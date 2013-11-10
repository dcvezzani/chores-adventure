require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Chores
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.autoload_paths += %W(#{config.root}/lib)

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.serve_static_assets = true

    config.assets.precompile += %w( application.css landing-page.css )
    
    config.assets.paths %W(#{config.root}/jquery-ui-1.10.3.custom/css/ui-lightness #{config.root}/custom #{config.root}/choco-templates/css #{config.root}/custom)
   
    initializer :after_append_asset_paths, 
                :group => :all, 
                :after => :append_assets_path do
       config.assets.paths.unshift Rails.root.join(config.root, "app", "assets", "jquery-ui-1.10.3.custom", "css", "ui-lightness").to_s
       config.assets.paths.unshift Rails.root.join(config.root, "app", "assets", "bootstrap-3.0.1", "css").to_s
       config.assets.paths.unshift Rails.root.join(config.root, "app", "assets", "choco-templates", "css").to_s
       #config.assets.paths.unshift Rails.root.join(config.root, "app", "assets", "jquery.timepicker", "css").to_s
    end
   
  end
end
