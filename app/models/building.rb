class Building < ApplicationRecord
  belongs_to :building_type

  scope :active, -> {
    where("is_deleted = false")
  }
end
