class Tweet < ApplicationRecord
  belongs_to :user
  validates(:content, { :length => { :maximum => 140 }})

  def hashtags(tweet)
    @tweet = Tweet.find_by(id: tweet.id)
    @hashtags = @tweet.content.scan(/\B#\w*[a-zA-Z]+\w*/) #This is using regex to pull the hashtags out of the content of the tweet
    @hashtags.each do |hashtag|
      recently_tweeted_hashtag = Hashtag.find_or_create_by(name: hashtag)
      #This will either find the hashtag if it already exists or create a new hashtag if it does not
      Hashtag.notify_users(hashtag)
      #This is checking each hastag for the users that have subscribed to it and then notifying them through the stubbed mailer
    end
  end

end