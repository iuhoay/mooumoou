require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PartTime
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.time_zone = 'Beijing'
    config.i18n.available_locales = ['zh-CN', :en]
    config.i18n.default_locale = 'zh-CN'

    config.autoload_paths += [
      Rails.root.join("lib")
    ]
    config.eager_load_paths += [
      Rails.root.join("lib/site_loader"),
    ]
  end
end
