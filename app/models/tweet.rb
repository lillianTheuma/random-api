class Tweet < ApplicationRecord
  validates :body, presence: true

  scope :search, -> (query) {where("body like ?", "%#{query}%")}
end
