class Race < ApplicationRecord
  has_many :racebonusses
  has_many :characters

  validates :raceName, :raceDesc, presence: true
end
