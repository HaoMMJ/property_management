class Room < ApplicationRecord
  belongs_to :building
  belongs_to :lighting_direction
  belongs_to :layout

  scope :active, -> {
    where("is_deleted = false")
  }
end
