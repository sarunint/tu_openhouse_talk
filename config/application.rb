require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TuOpenhouseTalk
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :th
    config.time_zone = 'Bangkok'
    config.action_mailer.default_url_options = { host: 'openhouse.triamudom.ac.th', script_name: '/talk' }
    config.action_mailer.smtp_settings = {
      address:              'mailserver.triamudom.ac.th',
      port:                 25,
      domain:               'openhouse.triamudom.ac.th',
      user_name:            'openhouse@triamudom.ac.th',
      password:             'xbjosmyp',
      authentication:       :login,
      enable_starttls_auto: false }
    # config.action_mailer.smtp_settings = {
    #   address:              'smtp.gmail.com',
    #   port:                 587,
    #   domain:               'tumso.triamudom.ac.th',
    #   user_name:            'tu.tumso@gmail.com',
    #   password:             'mathphychembiocom',
    #   authentication:       'plain',
    #   enable_starttls_auto: true  }
    config.action_mailer.asset_host = 'http://openhouse.triamudom.ac.th/talk'
  end
end
