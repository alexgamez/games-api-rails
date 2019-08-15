class Game < ApplicationRecord
  validates :title, presence: true
  validates :genre, presence: true
  validates :platform, presence: true
end
