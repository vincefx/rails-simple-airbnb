class Flat < ApplicationRecord
  # has_many :reviews, dependent: :destroy
  # CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  # validates :name, presence: true
  # validates :address, presence: true
  # validates :category, presence: true
  # validates :category, inclusion: { in: CATEGORIES }

  validates :name, presence: true
end
