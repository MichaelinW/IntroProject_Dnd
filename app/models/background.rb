class Background < ApplicationRecord
  has_many :characters

  validates :bgName, :bgDesc, presence: true
end
