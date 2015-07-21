class User < ActiveRecord::Base

  has_secure_password

  validates :email,
  presence: true,
  uniqueness: {case_sensitive:false}

  validates_presence_of :password, on: :create

  has_many :pets

  def self.authenticate email, password
    User.find_by_email(email).try(:authenticate, password)

  end


end
