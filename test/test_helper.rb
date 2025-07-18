ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "database_cleaner/active_record"
require "bcrypt"


module ActiveSupport
  class ActiveSupport::TestCase
  include Devise::Test::IntegrationHelpers
  end

  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end

  class ActiveSupport::TestCase
    setup do
      DatabaseCleaner.strategy = :transaction
      DatabaseCleaner.start
    end

    teardown do
      DatabaseCleaner.clean
    end
  end
end
