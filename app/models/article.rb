class Article < ApplicationRecord
  # This model now will give us getters and setters
  validates :title, presence: true
  validates :description, presence: true
end