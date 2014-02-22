class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+[a-z\d]\.[a-z]+\z/i
  #VALID_PASSWORD_REGEX = /(?=.*\d[a-z]).{6,15}/i

  validates :first_name,  presence: true,
                          length: { within: 2..50 }
  validates :last_name,   presence: true,
                          length: { within: 2..50 }
  validates :email,       presence: true,
                          format: { with: VALID_EMAIL_REGEX },
                          uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password,    length: { minimum: 6 }

end
