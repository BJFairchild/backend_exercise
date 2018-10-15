
require "minitest/autorun"
require_relative '../lib/hashtag'

class TestHashtag < Minitest::Test
  def setup
    @meme = Tweet.new
  end

  def test_that_has_many_tweets
  end

  def test_that_has_many_users
  end

  def test_that_it_is_not_longer_than_140_characters
  end

  def test_finding_hashtags_in_tweet
  end

  def test_create_new_hashtag_record_if_found_in_tweet
  end

  def test_subscribed_user_is_notified
  end

end
