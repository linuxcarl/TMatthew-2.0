class User < ActiveRecord::Base
  attr_accessible :email

  def password=(password_str)
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_digest = BCrypt::Engine.hash_secret(password_str, password_salt)
  end

  def authenticate(password)
    password.present? && password_digest.present? && password_digest == BCrypt::Engine.hash_secret(password, password_salt)
  end

end
