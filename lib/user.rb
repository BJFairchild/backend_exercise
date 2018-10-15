class User
  # --------------------  validations
  # TODO: fill out all the validations needed

  # --------------------  attributes
  # TODO: fill out all the attributes needed

  # --------------------  relationships
  # TODO: fill out all the relationships needed

  # --------------------  scopes
  # TODO: fill out all the scopes needed

  # --------------------  call backs
  # TODO: fill out all the callbacks needed

  # --------------------  functions
  def save
    # TODO: write a function that will utilize password hash and password
    # salt to encrypt the password.
  end

  def verify_password
    # TODO: write a function that will verify the supplied password to this user
    # object.
  end

  def notify
    # This function will send a notification out to the user using the
    # appropriate venue. Assume it is already written and use it where you need.
  end
end
