class Blog < ApplicationRecord
  validates :title, :content, length: { in: 1..140 }
  belongs_to :user
end
