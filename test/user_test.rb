require "minitest/autorun"
require_relative '../lib/user'

class TestUser < Minitest::Test
  def setup
    @meme = User.new
  end

  def test_verify_password
  end

  def test_salting_password
  end

  def test_that_password_and_password_confirmation_are_same_on_create
  end

  def test_that_validates_login_with_email_and_password
  end

  def test_that_validates_login_with_username_and_password
  end

end
