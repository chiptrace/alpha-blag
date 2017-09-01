# ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def sign_in_as(user, password)
    post login_path, { sessions: {email: user.email, password: password} }      # OPL => https://stackoverflow.com/questions/43850509/undefined-method-for-nilnilclass-error-while-submitting-form-and-rails-te
  end
    
end
