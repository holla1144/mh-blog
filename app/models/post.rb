class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 144 }
  validates :body, presence: true
end