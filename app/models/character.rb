class Character < ApplicationRecord
  belongs_to :dndclass
  belongs_to :race
  belongs_to :background

  validates :charName, :charGender, :charLvl, presence: true
  validates :dndclass_id, :race_id, :background_id, presence: true

end
