class Movie < ApplicationRecord
  validates :title, presence: true
  validates :rate, presence: true
  validates :year, length: { maximum: 4 }
  validates :content, length: { maximum: 300 }
end
