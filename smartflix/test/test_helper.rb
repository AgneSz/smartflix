ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
# ===>initial set up - 1st branch - Rspec files set up on the 2nd branch<===
# require 'capybara/rails'
# require 'spec_helper'
# <===

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

# ===>initial set up - 1st branch - Rspec files set up on the 2nd branch<===
# RSpec.configure do |config|
#   config.include Capybara::DSL
# end


# RSpec.describe 'smartfix', type: :system do 
#   describe 'index_page' do
#     it 'display text smartfix' do 
#       index_path = "/index"
#       visit index_path
#       expect(page).to have_content('smartfix')
#     end
#   end
# end
# <===