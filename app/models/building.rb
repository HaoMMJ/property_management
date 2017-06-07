class Building < ApplicationRecord
  belongs_to :building_type
  has_many :rooms

  scope :active, -> {
    where("is_deleted = false")
  }
end
