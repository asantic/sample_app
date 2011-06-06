require 'spork'

# --- Spork Instructions ---
# Sort through your spec_helper file. Place as much environment loading 
# code that you don't normally modify during development in the Spork.prefork
# block. Place the rest under Spork.each_run block. Any code that is left
# outside of the blocks will be run during preforking and during each_run!

Spork.prefork do
  # Code generated from 'rails generate rspec:install'
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'

  # Requires supporting ruby files with custom matchers and macros, etc,
  # in spec/support/ and its subdirectories.
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    # == Mock Framework
    #
    # config.mock_with :mocha
    # config.mock_with :flexmock
    # config.mock_with :rr
    config.mock_with :rspec

    # Remove this line if not using ActiveRecord or ActiveRecord fixtures
    config.fixture_path = "#{::Rails.root}/spec/fixtures"

    # If you're not using ActiveRecord, or you'd prefer not to run each of
    # your examples within a transaction, remove the following line or assign
    # false instead of true.
    config.use_transactional_fixtures = true
  end
  # End of code generated from 'rails generate rspec:install'
end

Spork.each_run do
  load "#{Rails.root}/config/routes.rb"
end

