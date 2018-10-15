require "minitest/autorun"
require_relative '../lib/user'

class TestUser < Minitest::Test
  def setup
    @meme = User.new
  end

  def test_that_user_validates_password_creation
  end


  def test_that_validates_login_with_email_and_password
  end

  def test_that_validates_login_with_username_and_password
  end

end
