class User < ApplicationRecord
  has_secure_password
  has_many :user_hashtags
  has_many :tweets
  has_many :hashtags, through: :user_hashtags

  # saving a new user to the database
  def save(UserName, Password)
    User.create(username: UserName, password: Password)
  end

  #authentication using the BCrypt gem
  def verify_password(UserName, Password)
    @user = User.find_by(username: UserName)
    @user.authenticate(Password)
  end

  def login(UserName, Password)
    if verify_password(UserName, Password)
      #This is where I would stub to the backend to log in the user if the password authenticates.
    else
      alert("Username or Password is incorrect")
      #This is where I would route the user back to the login page
    end
  end

  def subscribe_to_hashtag(UserName, HashTag)
    @user = User.find_by(username: UserName)
    @hashtag = Hashtag.find_by(name: HashTag)
    @user.hashtags << @hashtag
  end

  def notify(user, hashtag)
    #Email the user that was passed to this function that a new tweet with their favorite hashtag has been created.
  end
  
end
