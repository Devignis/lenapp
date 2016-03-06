ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'

require 'shoulda/matchers'
require 'capybara/rails'
require 'capybara/email/rspec'
require 'database_cleaner'

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.include Capybara::DSL
  config.include Capybara::RSpecMatchers, type: :feature
  config.include Warden::Test::Helpers
  config.include Misc::Helpers
  # config.include Oauth::Helpers
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!

  config.before(:suite) do
    DatabaseCleaner.strategy  = :truncation
    DatabaseCleaner.clean_with(:truncation)
    # OmniAuth.config.test_mode = true
  end

  config.before(:each) do
    DatabaseCleaner.start
    ActionMailer::Base.deliveries.clear
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.filter_rails_from_backtrace!
end
