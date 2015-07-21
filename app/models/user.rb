class User < ActiveRecord::Base

  has_secure_password

  validates :email,
  presence: true,
  uniqueness: {case_sensitive:false}

  validates_presence_of :password, on: :create

  def self.authenticate email, password
    User.find_by_email(email).try(:authenticate, password)

  end

  has_many :posts


end
