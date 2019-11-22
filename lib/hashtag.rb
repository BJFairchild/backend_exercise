class Hashtag < ApplicationRecord
  has_many :user_hashtags
  has_many :users, through: :user_hashtags

  def notify_users(HashTag)
    hashtag = Hashtag.find_by(name: HashTag)
    @subscribed_users = hashtag.users
    @subscribed_users.each do |user|
      User.notify(user, hashtag)
      #this is where the notify method in the users model would come into play. This method will stub out to a mailer to send an email out to each user subscribed to this hashtag.
    end
  end
  
end