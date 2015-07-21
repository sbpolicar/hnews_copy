class Post < ActiveRecord::Base
  belongs_to :user

  validates :title,
  presence: true,
  length: {within: 10..100}

  validates :link,
  presence: true,
  format: {with: /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix}
end
