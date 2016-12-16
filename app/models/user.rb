class User < ActiveRecord::Base
  has_secure_password
  #Turns the 'password' field into a digest and saves it as
  # password_digest using bcrypt and bcrypt gem installed
  has_many :reviews, dependent: :destroy

  validates :email, presence: true, exclusion: { in: [nil] }
   validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :first_name, presence: true
  validates :last_name, presence: true
end
