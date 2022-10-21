class Dndclass < ApplicationRecord
  has_many :characters

  validates :className, :classHD, :classDesc, presence: true
end
